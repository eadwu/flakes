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
    version = "1734673815";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/89f808979a5151bd91324e65d4f7ab1b62896983/code-insider-x64-1734673815.tar.gz";
      sha256 = "0vd8lllyl1dvk11rkyk9zlw5rlwb335x13ywii79rlz5w68c0x0s";
    };
  }
)
