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
    version = "1682542544";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/326dc5a307c54abfa8286da3879f6d8492a3db6a/code-insider-x64-1682542544.tar.gz";
      sha256 = "0pik50nc1irwnbfrm6g1f26x35ya7z9m2xcyp15lk2ffcj6shlkk";
    };
  }
)
