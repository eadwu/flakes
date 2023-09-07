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
    version = "1694108132";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5a400e53e985dc5e24f6ee574b07ab23943841c5/code-insider-x64-1694108132.tar.gz";
      sha256 = "1x02r6a84wq8v8jip71h12c3xzmby19yqiqki2xrv20wg2nza61z";
    };
  }
)
