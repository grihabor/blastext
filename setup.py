import json
import os
from setuptools import setup, Extension
from Cython.Build import cythonize
from pathlib import Path

root = Path(os.environ["BLAST_ROOT"])
release = Path(os.environ["BLAST_RELEASE"])

include_dirs = [root / "include", root / "inc"]
library_dirs = [release / "lib", release / "build" / "corelib"]

with open("/home/grihabor/build.log", "w") as build_log:

    libraries = []

    for library_dir in library_dirs:
        libraries.extend([f.name[3:-2] for f in library_dir.glob("*.a")])

    print(json.dumps(libraries), file=build_log)

extensions = [
    Extension(
        "core",
        ["core.pyx"],
        include_dirs=[str(d) for d in include_dirs],
        language="c++",
        libraries=libraries,
        library_dirs=[str(d) for d in library_dirs],
    )
]
setup(
    name="blastext", ext_modules=cythonize(extensions,), zip_safe=False,
)
