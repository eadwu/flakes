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
    version = "1670578555";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f076d553210e9ea65e7bccbfa2f7a786c10fcab2/code-insider-x64-1670578555.tar.gz";
      sha256 = "1g4c2gkqz860yjbdsavf6aihiv1dvhcfh8bpfh2yqc1h1wll38pz";
    };
  }
)
