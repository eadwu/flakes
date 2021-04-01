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
    version = "1617255231";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0640cdeb8ba34f2f00cf4de73783632c4a692c52/code-insider-x64-1617255231.tar.gz";
      sha256 = "0kxlkfn83m7d67m04ki1adq9c0krvdl61zy3rwj4vhl77vwjgias";
    };
  }
)
