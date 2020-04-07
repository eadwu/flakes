let
  source = builtins.fromJSON (builtins.readFile ./source.json);
  nixpkgs-mozilla = builtins.fetchTarball {
    url = "${source.url}/archive/${source.rev}.tar.gz";
    inherit (source) sha256;
  };
in
nixpkgs-mozilla
