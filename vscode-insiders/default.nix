{ fetchurl, vscode }:

(vscode.override {
  isInsiders = true;
}).overrideAttrs (_: rec {
  pname = "vscode-insiders";
  version = "1585952396";

  src = fetchurl {
    url = "https://az764295.vo.msecnd.net/insider/e8dbc5ea6092ba73ae70069d3e730f2cc56addff/code-insider-1585952396.tar.gz";
    sha256 = "0p1dc1n2s3rcckjhv5i31bvj98avjvfi6gcmxsw2f0ma8dp3qbp6";
  };
})
