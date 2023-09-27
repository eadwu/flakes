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
    version = "1695792912";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/254b455d8f1f02b3621e1c7c6c19798ea58945b9/code-insider-x64-1695792912.tar.gz";
      sha256 = "04wxy5mdwlg497cjl60c3nn4cp51ksj12whv9m3i6x98174dh7jw";
    };
  }
)
