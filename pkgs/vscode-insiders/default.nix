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
    version = "1686289452";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/db6bcdf309cc1565c502a54b73c33a63bdabfbd8/code-insider-x64-1686289452.tar.gz";
      sha256 = "170rhv99z1xqksq4n4bj4rqb4sly49vbz7nb6c1cclws61d16xxq";
    };
  }
)
