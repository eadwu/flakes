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
    version = "1674539434";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/0a6c277e4faa44a6b6eb82ddca8bfeccf7fecef6/code-insider-x64-1674539434.tar.gz";
      sha256 = "0nss44zcg6m4y23vds14070rqhfs17sn7ijdd1x121cnlrjl2rjd";
    };
  }
)
