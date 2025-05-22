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
    version = "1747891493";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/1d7ad01f171443c8b2401f031c2e8f686121515c/code-insider-x64-1747891493.tar.gz";
      sha256 = "1z2knv9n20sygms3mwhnk2bw18sdnbpicw9s0m5p0l0r24fdk72c";
    };
  }
)
