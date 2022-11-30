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
    version = "1669788395";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9908b3d5ae12691da5adc2f18e21a100ee8eeb58/code-insider-x64-1669788395.tar.gz";
      sha256 = "0rig3cgfxb1fmncwdbdzjiyy8pl8jza8pzsdp5d6529cd3b63ihl";
    };
  }
)
