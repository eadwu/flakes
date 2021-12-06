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
    version = "1638769599";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d09289a2b6dd0e56b2a264a8e9380685498e10d6/code-insider-x64-1638769599.tar.gz";
      sha256 = "181cacczil4lh4abyj330f4xs69jb62fyfg3f05fczb8clp4r6ya";
    };

    postPatch = "";
  }
)
