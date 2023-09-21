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
    version = "1695274494";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/11bfd76a61a299156a9f3138ecfad70937af3527/code-insider-x64-1695274494.tar.gz";
      sha256 = "05qs4d36vp37jwjywjxi9szwfbdsq504vqj1hcz1srz3qrcvdndn";
    };
  }
)
