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
    version = "1618313146";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/394a2e4779ff767e2761a59a51b15848dcd24173/code-insider-x64-1618313146.tar.gz";
      sha256 = "0kzs7yiaf666js92aw3kxrpjbj9z78abwl7wy4widl0dwx5jk8l4";
    };
  }
)
