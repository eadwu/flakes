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
    version = "1654070943";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4589815e4849499c67125ff68563fa102646b869/code-insider-x64-1654070943.tar.gz";
      sha256 = "10kkpx0f8dxigd3igs8narf6zgflwf07pynfwbswqpwj361a78zl";
    };

    postPatch = "https://az764295.vo.msecnd.net/insider/4589815e4849499c67125ff68563fa102646b869/code-insider-x64-1654070943.tar.gz";
  }
)
