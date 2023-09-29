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
    version = "1696007269";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ccc9961c5b2d99af99d892ce9ec38dd054590d3f/code-insider-x64-1696007269.tar.gz";
      sha256 = "06njbf0r5s845nshw65lhd38y6jgxgnvx3k2wq097kfmbqpf82p1";
    };
  }
)
