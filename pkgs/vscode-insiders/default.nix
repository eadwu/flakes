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
    version = "1674193695";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/9ccc2b3b30c122afe45bc6722bef0e3901fb2806/code-insider-x64-1674193695.tar.gz";
      sha256 = "11h745ji5dm1qcgkmqz96wh8c74pnp464irhbb2jpxaqn77ir7qn";
    };
  }
)
