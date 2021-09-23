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
    version = "1632406488";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/53aff5e347865fe22f9487ebd54dec9db23773b2/code-insider-x64-1632406488.tar.gz";
      sha256 = "10419spv8lxzrbch9yizkx04db7mswdvif86vpcqqd6wfgl568ss";
    };
  }
)
