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
    version = "1623648858";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e1161be26874f0d39a5b9cdeb2c5fbfd4f83bb80/code-insider-x64-1623648858.tar.gz";
      sha256 = "0jzjp25f9zx336iwnyam8bswn9m4advfkd70z469kginj3g84wk4";
    };
  }
)
