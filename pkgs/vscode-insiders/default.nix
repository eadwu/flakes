{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs
  (
    _: rec {
      pname = "vscode-insiders";
      version = "1589357893";

      src = fetchurl {
        url = "https://az764295.vo.msecnd.net/insider/e88b8d32aa7233f6cb3665f6dae9fa78b1e8aafb/code-insider-1589357893.tar.gz";
        sha256 = "1spbmhnqmp8bh99i84mkvyncvf8krf1x7qyn1vim3zrq3r360jkc";
      };
    }
  )
