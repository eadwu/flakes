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
    version = "1649223616";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f050b17dacedba13962244b13c70084a473d08f7/code-insider-x64-1649223616.tar.gz";
      sha256 = "1aihyqlknfvxasq5dzwy59l66xfk0cfyryp774w5injiqpqgwn9g";
    };

    postPatch = "";
  }
)
