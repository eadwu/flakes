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
    version = "1635313462";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0f7f6e338a4e86306474d4d01bdea9b8fe798017/code-insider-x64-1635313462.tar.gz";
      sha256 = "0nj9v6xxbk71clrqdwbkyrhqcxd5w68rdw4hmbbhf34917g0k24r";
    };
  }
)
