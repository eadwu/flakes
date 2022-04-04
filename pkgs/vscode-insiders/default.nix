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
    version = "1649050852";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5467c8c4413be3a69960fe418d2c345bfbdf2b55/code-insider-x64-1649050852.tar.gz";
      sha256 = "0yyhlj5hjs6p80kb56gqacywy1gsnqvjrc82z9qcw3qfwkrzksg3";
    };

    postPatch = "";
  }
)
