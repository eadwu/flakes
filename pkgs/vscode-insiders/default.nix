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
    version = "1620983310";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5246162662ffa9f16a70dc2b94f13b0d15511e64/code-insider-x64-1620983310.tar.gz";
      sha256 = "1hclh1nrpj6pqq0x1q0mh92nv9mr7p7ny70r8ha0xigpwsjawmcv";
    };
  }
)
