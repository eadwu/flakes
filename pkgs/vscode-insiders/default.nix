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
    version = "1665985475";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6455bf1608dfa1b955717f66295f0f9200db0f73/code-insider-x64-1665985475.tar.gz";
      sha256 = "12y8pvza123hwfkcgmz9j7wmqmm98mkdfhvjkjyg9iwvkx0jgkhn";
    };
  }
)
