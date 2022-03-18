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
    version = "1647582014";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d572d6e9d1282b352227916cb8f95bb2b03ddcaa/code-insider-x64-1647582014.tar.gz";
      sha256 = "0prsrwcqqfwc52cpmfs2cnmxnfmprkd5cg8frzcxwzx4g4nddyyz";
    };

    postPatch = "";
  }
)
