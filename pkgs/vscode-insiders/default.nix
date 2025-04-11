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
    version = "1744349856";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/043f699013796cbeae7c8fe9abac9b9eb26b3c51/code-insider-x64-1744349856.tar.gz";
      sha256 = "0hys20kv8xnn4lpcls1k2d189kqwkr5wbrl1j9vpns26pklpjnqd";
    };
  }
)
