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
    version = "1605516296";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/46ff33b6b6ec2db5906f52c236c7f712988516ff/code-insider-x64-1605516296.tar.gz";
      sha256 = "0w83a44m6bz28y9khrd8mnxdwc63w95a645rpl0q4llws6i69rmv";
    };
  }
)
