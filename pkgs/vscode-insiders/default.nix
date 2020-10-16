{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1602804055";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/89c002ab02f87102d91efc83c191ef1174756c6a/code-insider-x64-1602804055.tar.gz";
      sha256 = "1biwfsl7sgbkr82gg0jfnyn9d8ni8nv8yq9lsjrb47jclwyc00lv";
    };
  }
)
