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
    version = "1681278075";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e5512217bcfb2b644fe7ad6c465fe0b45d23265b/code-insider-x64-1681278075.tar.gz";
      sha256 = "0n84d9xcvvqj4kf0lsmcnm3lwpik6z9imww2z0ff6f3m2vi399cm";
    };
  }
)
