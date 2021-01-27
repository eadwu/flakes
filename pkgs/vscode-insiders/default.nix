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
    version = "1611725213";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9ee751e859d655e1e80fa0d57253304c01c65732/code-insider-x64-1611725213.tar.gz";
      sha256 = "0iih3g867szjdi8h9gznfvq6n8f56kh0sviyx648hhzds27p2mla";
    };
  }
)
