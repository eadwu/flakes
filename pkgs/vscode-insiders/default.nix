{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1599025859";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/00754e4babebc9ee5aa881234bc16366c4f32aa9/code-insider-1599025859.tar.gz";
      sha256 = "1l6kpfhzwndl91vafps72dvp7nx66jvlj9q3hxxzngpcasdx8q1s";
    };
  }
)
