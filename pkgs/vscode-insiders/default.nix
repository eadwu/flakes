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
    version = "1643773026";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4ccfe1100c3c5625804dbc20afd15ba311487883/code-insider-x64-1643773026.tar.gz";
      sha256 = "179q6irp5jkxrs4rzhi18pzklrdasxbj1502cppk5bm7kmzzci4k";
    };

    postPatch = "";
  }
)
