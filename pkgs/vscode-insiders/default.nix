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
    version = "1625484151";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1db97b8c87fb32aa47b58135832733f4950362b4/code-insider-x64-1625484151.tar.gz";
      sha256 = "1xq5g2az848wndjp42njjkc27hvcvqrhj7ss5m2m9gj7zlmp9w6v";
    };
  }
)
