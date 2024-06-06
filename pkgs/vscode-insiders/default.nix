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
    version = "1717652857";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/5f646b8e67a869ef33061085ffe0e377d5ba040c/code-insider-x64-1717652857.tar.gz";
      sha256 = "11xi5d72m4d73pn0fydl2giwcrfc9kcfflh0c09yczx5f9lnn8fc";
    };
  }
)
