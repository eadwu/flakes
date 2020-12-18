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
    version = "1608193523";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c8aaeb75137b8ec057d2676a22f7273a7a6a34a2/code-insider-x64-1608193523.tar.gz";
      sha256 = "1gxm1h2kwrcz1gy2c13xzpkv36cm7jnhxlsakk0mhfxbb8yy1dgm";
    };
  }
)
