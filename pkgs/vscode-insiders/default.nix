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
    version = "1621433448";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/53b58c89d44deb230dc526605561a1d42f6d1c50/code-insider-x64-1621433448.tar.gz";
      sha256 = "0grx119fvsz0hm5512anc857q8akpx3ci0qx5xc3ygx3r8cqakyf";
    };
  }
)
