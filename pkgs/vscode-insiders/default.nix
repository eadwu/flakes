{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs
  (
    _: rec {
      pname = "vscode-insiders";
      version = "1589883424";

      src = fetchurl {
        url = "https://az764295.vo.msecnd.net/insider/da3bf754c3c0eabda1dc80ed9d627679ee560697/code-insider-1589883424.tar.gz";
        sha256 = "1zk4fssvrg1pjjaha2fniyl4an0hhslcpf1nkga4iraws06c7rxc";
      };
    }
  )
