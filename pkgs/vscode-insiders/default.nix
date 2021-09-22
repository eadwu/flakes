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
    version = "1632289399";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8d2a6fa12466c488f732b020298bc836636c5b17/code-insider-x64-1632289399.tar.gz";
      sha256 = "154605vrpz5m9bzas6wl9dlqmiywnk4njwr27lab7x1888zg6jmr";
    };
  }
)
