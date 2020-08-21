{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1597991132";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/44ad54d9faa4604ab17628e8396e072258187737/code-insider-1597991132.tar.gz";
      sha256 = "1cyxhrvrq5nbqxvqb9d999wa9fkipm8llhqywa47wzmwaj0jxmz8";
    };
  }
)
