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
    version = "1711432177";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/5d8491d7130d25aae121eeaa1633603ef8faa39e/code-insider-x64-1711432177.tar.gz";
      sha256 = "1mjfzgqhg9n95knj27xcb9k6w1qa15d7qapyfd85vk7gm2p1pcyq";
    };
  }
)
