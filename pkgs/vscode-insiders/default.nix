{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs
  (
    _: rec {
      pname = "vscode-insiders";
      version = "1590013558";

      src = fetchurl {
        url = "https://az764295.vo.msecnd.net/insider/da98a19a5d6724367bd99c8ec3b8f55054be37d1/code-insider-1590013558.tar.gz";
        sha256 = "0ng3xi3yzhhrr27l14baf0cn26a3zk48ic76ksw73xdkgjbqlg96";
      };
    }
  )
