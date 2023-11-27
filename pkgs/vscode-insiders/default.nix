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
    version = "1701063303";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/055458feab40fc308fc6d70b185068138c8cf8eb/code-insider-x64-1701063303.tar.gz";
      sha256 = "1xgx812yick27a9b4s65j8qnx964xglmpc8skwmryyn8hps9swmi";
    };
  }
)
