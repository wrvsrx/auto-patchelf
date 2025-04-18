{
  buildPythonPackage,
  pythonOlder,
  hatchling,
  pyelftools,
}:

buildPythonPackage {
  pname = "auto-patchelf";
  version = "dev";
  src = ./.;

  pyproject = true;

  disabled = pythonOlder "3.12";

  build-system = [ hatchling ];

  dependencies = [
    pyelftools
  ];

}
