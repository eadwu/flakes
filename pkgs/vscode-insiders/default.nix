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
    version = "1614922563";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/567b82a0f9c31bd463af64997997730c5d0173cc/code-insider-x64-1614922563.tar.gz";
      sha256 = "0hgy88amwvffqkgg1mysmdczyrazbv6wd37vjniaxv4nk4w9mryp";
    };
  }
)
