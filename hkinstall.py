from hkpilot.utils.metapackage import MetaPackage


class ExternalsMeta(MetaPackage):

    def __init__(self, path):
        super().__init__(path)

        self._package_name = "hk-meta-externals"
