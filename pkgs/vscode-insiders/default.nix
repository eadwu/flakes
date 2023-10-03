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
    version = "1696340892";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e7e037083ff4455cf320e344325dacb480062c3c/code-insider-x64-1696340892.tar.gz";
      sha256 = "1pn1zhl01kkk5g7nffvl9hi75x6wf9w39cr88z0rd4aajl86b8pc";
    };
  }
)
