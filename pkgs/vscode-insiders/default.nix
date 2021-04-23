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
    version = "1619155812";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0310f02dc5d834bb3a7cc421ea5374aec8d011f1/code-insider-x64-1619155812.tar.gz";
      sha256 = "0xzwb0acb51kjrmsx4snjvf17fdhzl01m7fwasrvywksrf921skr";
    };
  }
)
