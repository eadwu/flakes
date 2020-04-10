{ runCommand
, gcc
, clight
, libmodule
}:

{ name
, src
}:

runCommand "clight-module-${name}" {
  inherit src;
  nativeBuildInputs = [ gcc clight libmodule ];
} ''
  gcc -shared -fPIC $src -o ${name} -Wno-unused
  install -D -t $out/share/clight/modules.d/${name} ${name}
''
