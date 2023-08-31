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
    version = "1693460030";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e7756c8870ee1df7360e6624e220534174039b02/code-insider-x64-1693460030.tar.gz";
      sha256 = "1bznjcndxngcrlg76m2z3dpqlkavlnasxmas813bp6x4dj90l5gy";
    };
  }
)
