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
    version = "1676439992";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/b2cc8c48b93222cd9727c4e70be3a269b132e5d8/code-insider-x64-1676439992.tar.gz";
      sha256 = "13bjwcyfvd61kb53i9fmb3r1cb0wr13ri57qf165p7mhkk6bifys";
    };
  }
)
