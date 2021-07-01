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
    version = "1625133590";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1fc68f3cf274141942b424894645a4f7096ec1f1/code-insider-x64-1625133590.tar.gz";
      sha256 = "1f0zvgycr0jg3whmxh8nzagak9f2lm5n5j8kk5cyn3r4fg3i9hyj";
    };
  }
)
