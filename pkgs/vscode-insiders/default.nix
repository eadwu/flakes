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
    version = "1661146970";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/235a92a3693176fbf9af16ec5b829c458a1d682f/code-insider-x64-1661146970.tar.gz";
      sha256 = "09wf5dipl6098r7djch4nln47fyg5hkwbqz6gxavw9qjklyjcfvq";
    };
  }
)
