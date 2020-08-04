{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1596525060";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/62503719349d04686a0704f7646b761aaf495b3d/code-insider-1596525060.tar.gz";
      sha256 = "0c93xzmiivilsqd0zcp4myq1hlaj6yprwx8kfkc8c0v6w1drw5x5";
    };
  }
)
