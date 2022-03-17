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
    version = "1647495640";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/db0525ff4ba814780e901a5b9e399aaf596b9b20/code-insider-x64-1647495640.tar.gz";
      sha256 = "1vf69ywyx73vgw66hv2r36hwx9x54085nrks62w43gsxwfwqpf8q";
    };

    postPatch = "";
  }
)
