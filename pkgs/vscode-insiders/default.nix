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
    version = "1659461292";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e9bda7aa4ff76648cfccc1a7bde465443803da71/code-insider-x64-1659461292.tar.gz";
      sha256 = "045npc03cx9i6xcssdz1bqp24kcx4a1zzpjq2jaal18lrwpwb4q7";
    };
  }
)
