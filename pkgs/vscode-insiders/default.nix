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
    version = "1605592633";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d19c7c52fd364dda47aa34d4284b4d3ff43c69b0/code-insider-x64-1605592633.tar.gz";
      sha256 = "1ylkr2wz13yqivqbpaql7xq3znam1v92na9cari2lpcv7ykvgy52";
    };
  }
)
