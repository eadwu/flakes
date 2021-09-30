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
    version = "1632980529";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6fed60f8f4dd21fb16dcbe64a742296b339ff0ee/code-insider-x64-1632980529.tar.gz";
      sha256 = "06zyf7y80b2iqc9lhx8flq7fsc9l9pwwszyc7s677rxhv9xg8b5z";
    };
  }
)
