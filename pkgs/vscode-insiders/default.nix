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
    version = "1684475330";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2d416df5f00253f5ebd60d2f08508a440747fd8d/code-insider-x64-1684475330.tar.gz";
      sha256 = "0lwqgvii3f2lxp02brwr06sfhc6pkn8wnxn1yhk44rdf9dl7q3ja";
    };
  }
)
