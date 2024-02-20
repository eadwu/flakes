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
    version = "1708393990";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/01ce8d869e4220577e194b2dd57bfa12437dfcf5/code-insider-x64-1708393990.tar.gz";
      sha256 = "19ivn92clgrh5x6rqgwwkdz0zhl8llyv6by25hhy5m6m7znjc9dm";
    };
  }
)
