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
    version = "1649790266";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/27dd7b41b6a830d5ea8eb896d5b2bb9c4bcd95ee/code-insider-x64-1649790266.tar.gz";
      sha256 = "13zvw62wnrnpv82fzgp3c74l84pjm5xmkrc9dq0qyc9387gxvkl1";
    };

    postPatch = "";
  }
)
