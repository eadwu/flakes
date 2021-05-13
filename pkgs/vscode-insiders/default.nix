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
    version = "1620883606";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/659175fa39b994fc39381b0af2874c85efeb2a01/code-insider-x64-1620883606.tar.gz";
      sha256 = "1hhf9i13v608x4gkz31znyq562h55wfj3bsbgqljf91v7p82a5fx";
    };
  }
)
