{ lib
, fetchPypi
, buildPythonPackage
, pytestrunner
, cffi
, six
, pytest
, pytest-mock
}:

buildPythonPackage rec {
  pname = "rchitect";
  version = "0.3.27";

  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256-6FbsNh5rm60+392STh/aIyRvz+Y3eGOiXbBR7OvyaI0=";
  };

  nativeBuildInputs = [
    pytestrunner
  ];

  propagatedBuildInputs = [
    cffi
    six
  ];

  doCheck = false;
  checkInputs = [
    pytest
    pytest-mock
    # pytest-cov
  ];
}
