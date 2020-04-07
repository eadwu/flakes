{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1586266972";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ea935488ec0e5415d4205c1f33ba332fd417f85a/code-insider-1586266972.tar.gz";
      sha256 = "0a3s6mq1002c59lr3q7pn2vjsvrdq1ncziir6ym86710vmvzi6p7";
    };
  }
)
