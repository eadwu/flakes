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
    version = "1664887827";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a12109a6ac8cdb070d94d63a5dc3a3a8f53bad8c/code-insider-x64-1664887827.tar.gz";
      sha256 = "009s6gqzdj11432jl1i57kcg8xlam6h3h9wgw8jkjm1riq0hf1yx";
    };
  }
)
