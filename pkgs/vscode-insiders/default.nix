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
    version = "1737647392";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/9d2ecaccb1e2fa5b949d67db7e8cc7a34f43538d/code-insider-x64-1737647392.tar.gz";
      sha256 = "1kg0zlcavcrkki6x38a0vswdsv79zc46kqb46qp3604yppccim1i";
    };
  }
)
