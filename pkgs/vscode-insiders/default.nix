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
    version = "1619708554";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b2d6cab998570dce35a80b0597758932cbfa7477/code-insider-x64-1619708554.tar.gz";
      sha256 = "0sq0kbix7x10m1nvi3s7y5iq3g0a1v0v37k87qlg7d2vf8qxx49z";
    };
  }
)
