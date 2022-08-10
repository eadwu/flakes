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
    version = "1660110342";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/dced70bbf36d3c53c08e791da1791ac7fc42519b/code-insider-x64-1660110342.tar.gz";
      sha256 = "1vvm4qb5g5wihbdvqgh9cym99pjz11l2vbzflw4j3cqxrigvxapp";
    };
  }
)
