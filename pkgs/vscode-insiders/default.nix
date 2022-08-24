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
    version = "1661319913";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7ed02a69658fc07f08740b98fa0d8d96c1a61ed4/code-insider-x64-1661319913.tar.gz";
      sha256 = "0zgc4j3s1s9y3gjwmh8lslicvdm00w95prrlcgyirzmkwvhpxdsm";
    };
  }
)
