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
    version = "1742275556";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/ea9b53fbcbcfd76f57d3f9414fb50ed2d05d3215/code-insider-x64-1742275556.tar.gz";
      sha256 = "1dmgs0zgq9a6vmpblrhagz4xq0pldkmpipvmji3s70sw5jzsqvbl";
    };
  }
)
