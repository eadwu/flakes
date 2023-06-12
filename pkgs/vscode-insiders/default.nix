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
    version = "1686548786";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ef6abe4cd1573689d070b8715e97019cfadaeb51/code-insider-x64-1686548786.tar.gz";
      sha256 = "047x3pmzqqf8l3zffr0xl32b3yj0hf4zij43k2dar7gz8g3xwy8v";
    };
  }
)
