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
    version = "1620624691";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/54d33cf14cf6c0e86880b5b74a5a3628de42bce9/code-insider-x64-1620624691.tar.gz";
      sha256 = "1ik5f32pf968x0si7x394vmgmywv20pyxaxnibpi2nbwblm9r9m9";
    };
  }
)
