{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1593755034";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e38c2d293da8f435d408afaf7f35a20cf3a10d30/code-insider-1593755034.tar.gz";
      sha256 = "022id1d0ps7n03b5wy0qk5p4q2xx4dschj35xll10diknddlrb9y";
    };
  }
)
