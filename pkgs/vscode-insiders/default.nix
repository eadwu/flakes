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
    version = "1607530658";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c6cb54153991e7e3686c51ccd8d85b626b9b1fe4/code-insider-x64-1607530658.tar.gz";
      sha256 = "0brf6wzgrrn5029cr0zdrlfirlz03k0cgfg4ccdkzl9d9d4lkzni";
    };
  }
)
