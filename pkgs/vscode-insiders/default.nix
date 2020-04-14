{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1586801180";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4f05de82a75569601bc2dc894023383b4ce1c2c0/code-insider-1586801180.tar.gz";
      sha256 = "0f5cy62c38yqhrhpngayvaa0qpnqlxzm7wnss3i68yv40lc8gj36";
    };
  }
)
