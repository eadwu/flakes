{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1597733522";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3d5b2fecf2e6788cb9877d7d868d964fbc3ecd53/code-insider-1597733522.tar.gz";
      sha256 = "1p2wf27mk98q4gxvdn7x89yv2mrxlb15q6hiy3s9qg5n66kh74mr";
    };
  }
)
