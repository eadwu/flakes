{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1594678889";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3bc3f95dbc0434fd88bc3ae99b8aca8b281fc622/code-insider-1594678889.tar.gz";
      sha256 = "0jq150wgisz13fdi0v4chl2nrkg3hg22a5shf85avzhigs0rzln0";
    };
  }
)
