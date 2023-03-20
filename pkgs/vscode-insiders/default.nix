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
    version = "1679291454";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/fa13bf16fd237afef07f4df0648da026f43e3963/code-insider-x64-1679291454.tar.gz";
      sha256 = "1xawlm67rzqblvfqvxziq5h7rw4vylvh6dbr90ph4vga6qkdf66r";
    };
  }
)
