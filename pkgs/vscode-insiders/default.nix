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
    version = "1667540698";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e764c5b816a99eb8673b2fc4fc028827f202872f/code-insider-x64-1667540698.tar.gz";
      sha256 = "074zjbfw9x7fhl5c4hbklmcgvkpkcxamfn6kb9gsgngi251i3nxc";
    };
  }
)
