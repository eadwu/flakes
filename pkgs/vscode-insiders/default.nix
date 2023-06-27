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
    version = "1687845306";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/45b31e9a872da8cc3cc8fff41c1eeb2063be04b7/code-insider-x64-1687845306.tar.gz";
      sha256 = "1i2f408rr22n5hc0icvrj6zv33snf68ycrys59d5ix19haxz46ws";
    };
  }
)
