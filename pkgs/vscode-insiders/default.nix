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
    version = "1665121523";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/fad3a77833b9249158dfd88477114a06435e46a2/code-insider-x64-1665121523.tar.gz";
      sha256 = "0kv429mim66xvf1r265xzzpf9n1fib60jzbc1a68yky9bjhnnd2m";
    };
  }
)
