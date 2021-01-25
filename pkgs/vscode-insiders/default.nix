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
    version = "1611564978";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/dcda88e5a69a52b3a9e141af73b68caae08cb2bf/code-insider-x64-1611564978.tar.gz";
      sha256 = "1c0y47q14di9yis0x1jh7r2kyprx15l3r0hpk1rfbl05lnyznrnc";
    };
  }
)
