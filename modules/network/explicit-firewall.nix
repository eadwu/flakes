{ config, lib, ... }:

with lib;

let
  cfg = config.networking.firewall;
  nftablesEnabled = config.networking.nftables.enable;

  rule = type: port: protocol: ip: "${type} saddr ${ip} ${protocol} dport ${port} accept";
  ruleGeneration = type: protocol: attrs:
    let
      getIPRules = set: port: concatMapStringsSep "\n" (rule type port protocol) set.${port};
      getRules = set: concatMapStringsSep "\n" (getIPRules set) (attrNames set);
    in
    getRules (filterAttrs (_: v: v != [ ]) attrs);

  ipv4Rules = ruleGeneration "ip";
  ipv6Rules = ruleGeneration "ip6";
in
{
  options.networking.firewall = {
    allowedTCPPortsFromIPv4 = mkOption {
      type = types.attrsOf (types.listOf types.str);
      default = { };
    };

    allowedTCPPortsFromIPv6 = mkOption {
      type = types.attrsOf (types.listOf types.str);
      default = { };
    };

    allowedUDPPortsFromIPv4 = mkOption {
      type = types.attrsOf (types.listOf types.str);
      default = { };
    };

    allowedUDPPortsFromIPv6 = mkOption {
      type = types.attrsOf (types.listOf types.str);
      default = { };
    };
  };

  config = {
    assertions = [
      {
        assertion = nftablesEnabled;
        message = ''
          IP-based rule generation is only configured for nftables-based firewalls
        '';
      }
    ];

    networking.firewall.extraInputRules = ''
      ${ipv4Rules "tcp" cfg.allowedTCPPortsFromIPv4}
      ${ipv6Rules "tcp" cfg.allowedTCPPortsFromIPv6}
      ${ipv4Rules "udp" cfg.allowedUDPPortsFromIPv4}
      ${ipv6Rules "udp" cfg.allowedUDPPortsFromIPv6}
    '';
  };
}
