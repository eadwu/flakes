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
    version = "1688967231";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5150ef0ce77ef5516e55af4b8272f25907b55953/code-insider-x64-1688967231.tar.gz";
      sha256 = "016576db5gk603cmf6fykbah3vndsv3vgikkwwmlr1c0ml8k83n4";
    };
  }
)
