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
    version = "1698833805";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d037ac076cee195194f93ce6fe2bdfe2969cc82d/code-insider-x64-1698833805.tar.gz";
      sha256 = "0ap394bvw2am99qvgvzqfxl98db0vmn9dmzp7hp6k115j5dn0q88";
    };
  }
)
