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
    version = "1624512639";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3caebff71e514ece73b125468881d102e767ee4d/code-insider-x64-1624512639.tar.gz";
      sha256 = "0k56r8liw4ylm2m6kdqxnxidd09d6ylzk5j1ws2sdklbryny5nkp";
    };
  }
)
