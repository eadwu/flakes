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
    version = "1678168321";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bbc87d8ec2453f12c0066e1c30b41cd5bd2aa021/code-insider-x64-1678168321.tar.gz";
      sha256 = "1ikqpw1sljfx41akp2lwk76cgwy83i9krj92wm0c5fh40fjbz6g0";
    };
  }
)
