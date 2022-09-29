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
    version = "1664440567";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2c801254ebf547baaee771b99aa76d202f999622/code-insider-x64-1664440567.tar.gz";
      sha256 = "1kpi6mavjc1jh6b3sv12gzmksh27wbc0gcbh9qf5sq7gmjrnx6nm";
    };
  }
)
