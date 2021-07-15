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
    version = "1626327269";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/50b3811fdc5b5c80ca516a2edfffedcbd464b033/code-insider-x64-1626327269.tar.gz";
      sha256 = "16sxhdxfd64pr8gqga7zv9a51l9ks0dxiv2pq44knfx8vnc3ggm1";
    };
  }
)
