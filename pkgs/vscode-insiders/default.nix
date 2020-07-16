{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1594909647";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5e5fa3edde19d38ac512d65ccefe2a12ecab025a/code-insider-1594909647.tar.gz";
      sha256 = "11y180299wai71lxkv8cfxp6vr5klbjqm5zspbh5m89q2zq4mf94";
    };
  }
)
