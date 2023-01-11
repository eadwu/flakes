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
    version = "1673457046";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/89e427274e1c9e555f8bfa21bd1e9c50c0225403/code-insider-x64-1673457046.tar.gz";
      sha256 = "0mrpm9nj6w2ddfg74lqg7rqrxfdvllpbcsqf5hqpgm2ckjk2dlfx";
    };
  }
)
