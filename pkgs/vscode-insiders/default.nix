{ fetchurl, vscode }:
let
  vscode-unwrapped = vscode.unwrapped or vscode;
in
(
  vscode-unwrapped.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1637041400";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6a25ae3a24929f35aabf8a051531c0716032e0a0/code-insider-x64-1637041400.tar.gz";
      sha256 = "1hkx66mgx4gs80kkaqglvnx0hy4wm02bpfi0jndg4wz1rad4vmg6";
    };
  }
)
