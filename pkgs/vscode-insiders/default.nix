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
    version = "1625204112";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5cb98db286b44e01b792ea3028473007e09f154c/code-insider-x64-1625204112.tar.gz";
      sha256 = "0icchlk2jnfzlk1kcy1k2987pvbfz1g98wxylvvhahdffglfzgkm";
    };
  }
)
