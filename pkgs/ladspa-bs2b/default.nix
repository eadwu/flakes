{ stdenv
, fetchurl
, pkgconfig
, libbs2b
, ladspaH
}:

stdenv.mkDerivation rec {
  pname = "ladspa-bs2b";
  version = "0.9.1";

  src = fetchurl {
    url = "https://downloads.sourceforge.net/project/bs2b/plugins/LADSPA%20plugin/${version}/${pname}-${version}.tar.gz";
    sha256 = "1b4aipbj1ba5k99gbc7gmgy14sywyrjd8rpyqj5l905j0mjv8jg2";
  };

  nativeBuildInputs = [
    pkgconfig
    libbs2b
    ladspaH
  ];
}
