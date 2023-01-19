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
    version = "1674033825";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/a0562ccdb202a29ac35da81c2b5482e517158f32/code-insider-x64-1674033825.tar.gz";
      sha256 = "1kikp1q40zcvn736j1nqgdx8rh6lxqa6qi07h7xx354q5bh59fsa";
    };
  }
)
