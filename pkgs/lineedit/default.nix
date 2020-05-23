{ lib
, fetchPypi
, buildPythonPackage
, pygments
, six
, wcwidth
, pytest
, pyte
, pexpect
, ptyprocess
}:

buildPythonPackage rec {
  pname = "lineedit";
  version = "0.1.5";

  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256-/u8TR7+eRgpQgtr7Ba2cE71JrSewQXTQc3mhPDf2/UA=";
  };

  propagatedBuildInputs = [
    pygments
    six
    wcwidth
  ];

  doCheck = false;
  checkInputs = [
    pytest
    # pytest-cov
    pyte
    pexpect
    ptyprocess
  ];
}
