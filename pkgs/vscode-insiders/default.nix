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
    version = "1622196565";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/541a5d4fa70ab3095f23b28b88914e1f6a8f65c4/code-insider-x64-1622196565.tar.gz";
      sha256 = "0xnmzlkn9731pi46vfn1ikvfc59020mn2sin41kqvf53swnkc55i";
    };
  }
)
