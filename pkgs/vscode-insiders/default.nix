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
    version = "1672897600";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/79c4f9b75db3b4f50468fc022cacf8ba6d640aff/code-insider-x64-1672897600.tar.gz";
      sha256 = "10q1nnh61z252mc2nvc2q4wczwjr196kyl18spyl5wrh4r6k050w";
    };
  }
)
