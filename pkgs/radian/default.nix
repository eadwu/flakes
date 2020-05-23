{ lib
, fetchFromGitHub
, buildPythonApplication
, pytestrunner
, rchitect
, lineedit
, six
, pygments
, coverage
, pytest
, pyte
, pexpect
, ptyprocess
}:

buildPythonApplication rec {
  pname = "radian";
  version = "0.5.4";

  src = fetchFromGitHub {
    owner = "randy3k";
    repo = "radian";
    rev = "v${version}";
    sha256 = "sha256-hn126L3SG72njNxZ3mmMJaWN3fPiBqqq/ZSTXRxDCMU=";
  };

  nativeBuildInputs = [
    pytestrunner
  ];

  propagatedBuildInputs = [
    rchitect
    lineedit
    six
    pygments
  ];

  doCheck = false;
  checkInputs = [
    coverage
    pytest
    pyte
    pexpect
    ptyprocess
  ];
}
