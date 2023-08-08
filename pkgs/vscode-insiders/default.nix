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
    version = "1691480594";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/85daa35afb86202badbee79532537bf226961f25/code-insider-x64-1691480594.tar.gz";
      sha256 = "1sb1sb06ncg3w2drfihdy4bpj2akdy7dw219hifs714xfk8z2pqp";
    };
  }
)
