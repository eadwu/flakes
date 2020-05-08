{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs
  (
    _: rec {
      pname = "vscode-insiders";
      version = "1588870215";

      src = fetchurl {
        url = "https://az764295.vo.msecnd.net/insider/d487078dc7fc1c276657cadb61b4f63833a8df55/code-insider-1588870215.tar.gz";
        sha256 = "0cqqhgbypsxk78dd5wr3c2kkcvgmy3vwflgn761cljdzn20n1k19";
      };
    }
  )
