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
    version = "1619546376";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/19cda32aafccb88db45622e7ae9be90cb71c9744/code-insider-x64-1619546376.tar.gz";
      sha256 = "0vk6350wycihhc5f94190qsrfqklgk7d05c6nn92mzbk4p8gx53h";
    };
  }
)
