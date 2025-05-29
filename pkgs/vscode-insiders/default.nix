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
    version = "1748532368";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/1d917c0301339acb5ab3fd290a9b406ec9d1a4ae/code-insider-x64-1748532368.tar.gz";
      sha256 = "1876f0292hm1vf046h5g51wcgzlji78qy8mnqay7kqa2cbhd3ksk";
    };
  }
)
