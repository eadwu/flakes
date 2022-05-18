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
    version = "1652852403";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/688c80245936b49b7ceca494d9edfe97cae06f8a/code-insider-x64-1652852403.tar.gz";
      sha256 = "137kzshrz3c9arykw95q1k4i9r5a241w9hd5xpr6f864iznx88pz";
    };

    postPatch = "";
  }
)
