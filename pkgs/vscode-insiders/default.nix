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
    version = "1707198392";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/23b5a7dd6b2eb828c3f08c945b2a73758a4a52b3/code-insider-x64-1707198392.tar.gz";
      sha256 = "1i6b51dm8bpv9m9plr5azlnqknl7lf2kivch5nbq3mwrfn8mwrlj";
    };
  }
)
