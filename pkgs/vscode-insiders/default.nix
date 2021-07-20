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
    version = "1626759492";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b805d2e94937976bb17d0439f57fcd3a9d423c31/code-insider-x64-1626759492.tar.gz";
      sha256 = "0mvahl6n0yi9gs72qs4420v0y8zb8sic2f0mm91dryxh810gm2ks";
    };
  }
)
