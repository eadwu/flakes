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
    version = "1678686563";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/95ee78fd9ada5361edb97a51122cb84e8b46c243/code-insider-x64-1678686563.tar.gz";
      sha256 = "1d1p1pfn7jqdy03367j4vj1qmcv3m2s1s3l1qzgz337hhs8vdi06";
    };
  }
)
