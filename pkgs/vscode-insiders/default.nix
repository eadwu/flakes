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
    version = "1679483715";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a5bd844beddef8ca5f9ccfdb1bb7b3b4f8e5204e/code-insider-x64-1679483715.tar.gz";
      sha256 = "0wqkvdgsw7z1z3p4qygsvrgna4c1gfz7hzaddb8bih4ggmfkv7nk";
    };
  }
)
