{
  mkShell,
  uv,
  python3,
}:
mkShell {
  env = {
    UV_LINK_MODE = "copy";
    UV_PYTHON = "${python3}/bin/python";
    UV_PYTHON_DOWNLOADS = "never";
  };
  shellHook = ''
    source .venv/bin/activate
  '';
  nativeBuildInputs = [
    uv
    python3
  ];
}
