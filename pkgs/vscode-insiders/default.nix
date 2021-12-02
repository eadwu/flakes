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
    version = "1638423786";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/68a1e2f872f8869b004eec284917782474730e0b/code-insider-x64-1638423786.tar.gz";
      sha256 = "0mrmgjnwy4avygr4yyaw6x9m7m81dazh8sm1fr3i4pbh2qraic3a";
    };

    postPatch = "";
  }
)
