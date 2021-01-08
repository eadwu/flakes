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
    version = "1610103641";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ed6c343edb720d91ee0859e566c84b5687f5a9d5/code-insider-x64-1610103641.tar.gz";
      sha256 = "0rmnw7jxwlix0hxs6irp5m94aicc52nlwhpl4w16zv3h5v6a2lrk";
    };
  }
)
