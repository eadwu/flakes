{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1591260310";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c7a37c4400bb4c1b92eeeaea1bcacc9ec3789ef3/code-insider-1591260310.tar.gz";
      sha256 = "19mnk5j101rz5bnaq81fby57pidkqi8ysjv4hvis4s92nnaj1im3";
    };
  }
)
