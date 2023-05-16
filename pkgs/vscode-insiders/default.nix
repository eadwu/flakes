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
    version = "1684235233";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9233de805c8fb05fad4d9d1c15f22fbca85430ad/code-insider-x64-1684235233.tar.gz";
      sha256 = "00q43lmjfq6ksdayfdrlqi66w464asmv7yxahrjwxjnwm94xgiqy";
    };
  }
)
