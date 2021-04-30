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
    version = "1619775740";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6449b6b7253b5808e2278903c82da8d59a230383/code-insider-x64-1619775740.tar.gz";
      sha256 = "0kpp9s33w3kipn2ghvsakkki51kvh6mmx91qdn7k5i0q6j5r0917";
    };
  }
)
