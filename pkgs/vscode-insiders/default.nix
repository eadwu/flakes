{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1593582397";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b16b467d3e03e1a1ae05b5836e4e5a5af504e86d/code-insider-1593582397.tar.gz";
      sha256 = "13x5d8ywvjlrfwdscyls22aapmawfi23j90j713qs4xrpyl5881v";
    };
  }
)
