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
    version = "1729497750";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/75caed98f2ffb9e0657001af4cd0aee5bb938a84/code-insider-x64-1729497750.tar.gz";
      sha256 = "05fmd9y2mcim9g3nmk9an2i94ygbsh5ylgkbyp1sk6kcpmiqsms3";
    };
  }
)
