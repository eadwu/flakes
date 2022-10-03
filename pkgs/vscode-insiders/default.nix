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
    version = "1664784105";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9fb452c4852ef098206ec67a2b236ad5fd0ba828/code-insider-x64-1664784105.tar.gz";
      sha256 = "1ky5a1y4w0wp0x4gi56ba26kad0fhp1zhvx3q8fiybb1bjjbj71l";
    };
  }
)
