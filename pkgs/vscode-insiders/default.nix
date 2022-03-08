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
    version = "1646717960";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/45b4204501ac1f50b6231af3c996d35f86359ecd/code-insider-x64-1646717960.tar.gz";
      sha256 = "19sxzrp7zjq35np124mi0nf8z3pblcqragh5r08wpz11qh49hryv";
    };

    postPatch = "";
  }
)
