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
    version = "1630055461";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6a2daec767703dad42461333fbf8666aa481a32b/code-insider-x64-1630055461.tar.gz";
      sha256 = "18jip4x6jlik9s6yd9xqxbrcdcaqy60yh6fk68y3m8d8a7x644wr";
    };
  }
)
