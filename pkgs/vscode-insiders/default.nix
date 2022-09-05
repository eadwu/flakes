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
    version = "1662356681";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d17726fe4beae5abe87ba9e9429cd298be8b53c4/code-insider-x64-1662356681.tar.gz";
      sha256 = "0hpzxdwv1w469sfgyvxsfmcdqgl1rdqa5vqspb9rmrvrfwyfvni8";
    };
  }
)
