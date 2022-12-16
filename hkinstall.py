from hkpilot.utils.metapackage import MetaPackage

import inspect
import os


class ExternalsMeta(MetaPackage):

    def __init__(self, path):
        super().__init__(path)

        self._package_name = "hk-meta-externals"
        self._package_version = "0.0.1"
