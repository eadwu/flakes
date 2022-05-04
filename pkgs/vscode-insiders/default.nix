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
    version = "1651624320";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3159d61ccf5150764f7742f098d76872e3114dcb/code-insider-x64-1651624320.tar.gz";
      sha256 = "1s3iviwhgr6v42w8a6m982r8l9ffylkl65380k6nhd8a33q1z07c";
    };

    postPatch = "";
  }
)
