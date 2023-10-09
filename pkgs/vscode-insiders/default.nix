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
    version = "1696831902";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/55d1cfea45b665bb54e46d11bd3ccddf9e66108b/code-insider-x64-1696831902.tar.gz";
      sha256 = "0zz6w6r4zqmk4ljipf2pqlq383m4mr3hjbfz97vxqyj108ljcyh4";
    };
  }
)
