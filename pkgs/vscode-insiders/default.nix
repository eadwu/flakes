{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1588139461";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4bd206856db30c27d38aa0f1fbe74bac6156edc7/code-insider-1588139461.tar.gz";
      sha256 = "1ksp70cdiqwaxlx50c613xkbfaaszzin3dgghbk9sqb9djsbbpg8";
    };
  }
)
