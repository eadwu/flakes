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
    version = "1684388892";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2946b1ee55db1d406526d3fd1df49250b2f8322d/code-insider-x64-1684388892.tar.gz";
      sha256 = "0xk00wq64k7apf98vqw8gkgnhsb8fl69b4fqcw3s0lqb7bckcgd9";
    };
  }
)
