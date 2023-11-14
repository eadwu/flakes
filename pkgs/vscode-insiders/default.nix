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
    version = "1699940062";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/94959e85502687ec77e23eb0d4d4b1a827b919af/code-insider-x64-1699940062.tar.gz";
      sha256 = "1dls73jq4wfkl6r7icawr35giz7pvn89s6378dr5d7g955sr6z8q";
    };
  }
)
