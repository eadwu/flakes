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
    version = "1698403254";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/35419fc016b8d3d5dbc59aa11a0be957b0897309/code-insider-x64-1698403254.tar.gz";
      sha256 = "0d68jlph9jsc73d74y8cqlg1wj2mcxcqgqcz14h2rk76mm9ly7kk";
    };
  }
)
