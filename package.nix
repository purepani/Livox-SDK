{
  clangStdenv,
  cmake,
  ...
}:
clangStdenv.mkDerivation {
  pname = "Livox-SDK";
  version = "2.3.0";
  src = ./.;
  nativeBuildInputs = [
    cmake
  ];
  #configurePhase = ''
  #  cd build
  #  cmake ..
  #'';

  #buildPhase = ''
  #  make
  #'';

  #installPhase = ''
  #  mkdir -p $out/bin
  #  mkdir -p $out/lib
  #  mv sdk_core/liblivox_sdk_static.a $out/lib
  #  mv sample/ $out/bin
  #  mv sample_cc/ $out/bin
  #'';
}
