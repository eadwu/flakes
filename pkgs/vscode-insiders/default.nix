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
    version = "1718941248";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/4bbebd8af922ed3b5a7a14eb0848c04918454c38/code-insider-x64-1718941248.tar.gz";
      sha256 = "0qg9878xrvjldsnbj4dwy1pmymvqxkrhghz79al0py6rp6d7saf8";
    };
  }
)
