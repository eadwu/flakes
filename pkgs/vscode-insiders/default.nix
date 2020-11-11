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
    version = "1605121011";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/40558fc8e13dbdceee5f4a9ad3fc661b9f8dae15/code-insider-x64-1605121011.tar.gz";
      sha256 = "14ffbwk8ngzpmq7gkqbc792wrzdw1f8aq8nyf219xixv5nwa2sfr";
    };
  }
)
