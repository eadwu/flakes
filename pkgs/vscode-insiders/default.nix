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
    version = "1636353348";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a7104f13ff61bcd9f4c827d8fe3c0d27bb479fd8/code-insider-x64-1636353348.tar.gz";
      sha256 = "1ljja563n7wzwixvc3fwrzql122lvmvb9bvz3f1z426h423r347s";
    };
  }
)
