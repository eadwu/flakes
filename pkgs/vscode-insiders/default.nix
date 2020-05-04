{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs
  (
    _: rec {
      pname = "vscode-insiders";
      version = "1588585338";

      src = fetchurl {
        url = "https://az764295.vo.msecnd.net/insider/fd5d9a30259bb2bebab3e62dfd8315c2e1b27744/code-insider-1588585338.tar.gz";
        sha256 = "0p6wq915y41kk5f0dl9yfssg8xhas5lq295bgp0nns2pm935h50b";
      };
    }
  )
