{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1596545396";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/459610f3ef11b956968afadff704bad3bc1a0de2/code-insider-1596545396.tar.gz";
      sha256 = "063fw2g9vidvk20fn48scmvmy44y3sa9lvhm01f73cv1lk78g82r";
    };
  }
)
