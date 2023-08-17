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
    version = "1692250413";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ccb95fd921349023027a0df25ed291b0992b9a18/code-insider-x64-1692250413.tar.gz";
      sha256 = "028s4fifskh23lpasmdcdlk4nhyy7608mcajjzazxx334yapq3cf";
    };
  }
)
