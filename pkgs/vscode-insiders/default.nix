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
    version = "1633029538";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/83b7d33abba1fbc9ba6dbf25b53b47821086b22f/code-insider-x64-1633029538.tar.gz";
      sha256 = "0dpsclizzcph9b864jpfrdvkbyjaf6hfd7qwrdlhb0mmmylg9ngx";
    };
  }
)
