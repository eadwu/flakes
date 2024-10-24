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
    version = "1729748853";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/39fd376a04ae461e1abb4212d6395d7a56959198/code-insider-x64-1729748853.tar.gz";
      sha256 = "13wxfcx300krhzfm3rc60afrffpc8sz4lvw24cawbqhmzvhd9sgh";
    };
  }
)
