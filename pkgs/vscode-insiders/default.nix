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
    version = "1681191975";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/761de52b5e297a8ea461dd501c897cc74c407733/code-insider-x64-1681191975.tar.gz";
      sha256 = "080y10033dh9hdxa7i3k6v57rb2zhh9kcghzmz5qj12x986x2ypy";
    };
  }
)
