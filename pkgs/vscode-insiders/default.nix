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
    version = "1662961369";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/835ace5796cec0ed19a7eec119b26b57220b0f1a/code-insider-x64-1662961369.tar.gz";
      sha256 = "1x26ygyxsg9wgvb4mh9cjn9bmpyxjmd800sn5mhn13znfa8ll18c";
    };
  }
)
