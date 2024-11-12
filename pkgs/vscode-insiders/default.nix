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
    version = "1731390420";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/5690e16478e0d893f5649b87e842faa82965b738/code-insider-x64-1731390420.tar.gz";
      sha256 = "176a6pzr4jlqdwh7v2i75ljyx7jnhal4pqkzsyg8vzdckhjsxpi4";
    };
  }
)
