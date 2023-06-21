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
    version = "1687336996";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/636dbcff557af8aa088ae118b1a094dce6632ce7/code-insider-x64-1687336996.tar.gz";
      sha256 = "04rawdlnv1132pk4wqlnyyq5lj9capfwbzazg3zw7hfgknyl7217";
    };
  }
)
