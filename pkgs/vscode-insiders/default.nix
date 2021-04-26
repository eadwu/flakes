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
    version = "1619458825";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5080d21c0b538b996c83fb7b14a746f656eaef15/code-insider-x64-1619458825.tar.gz";
      sha256 = "07pjca53mq5fhvh3xlzg0lf8azrgvwyk4mnswvpy5s5p2b8526wq";
    };
  }
)
