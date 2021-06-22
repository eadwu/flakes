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
    version = "1624347317";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d54f7e1f6c1290fe27e2397eca509d0e0728272e/code-insider-x64-1624347317.tar.gz";
      sha256 = "1dsjg2n6rl60lvvbxyy5p5066hj7nri7v23yp8iz0zvqafvgz9di";
    };
  }
)
