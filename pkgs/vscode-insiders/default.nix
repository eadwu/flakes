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
    version = "1649655451";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b84feecf9231d404a766e251f8a37c730089511b/code-insider-x64-1649655451.tar.gz";
      sha256 = "1jvfj3x33jmw52sbclv818vb7cgr9k0pdx7piiiskghmmcznl236";
    };

    postPatch = "";
  }
)
