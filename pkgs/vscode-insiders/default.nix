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
    version = "1705383299";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/2c8f29174a63b3ace3d00ad0028cdc7ed9853b8b/code-insider-x64-1705383299.tar.gz";
      sha256 = "0zmzfxlkfglbghb1if4zqdvxhs40h8lnd70d6xlvgfrhsfcymda8";
    };
  }
)
