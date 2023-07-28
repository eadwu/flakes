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
    version = "1690504868";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e731964e84fe1425c35426d25affa6f22ed02ab5/code-insider-x64-1690504868.tar.gz";
      sha256 = "0fxyiv857pflhg61lwhgr3q6rvf2s8q8nap5mx9vcjywsmcmw6md";
    };
  }
)
