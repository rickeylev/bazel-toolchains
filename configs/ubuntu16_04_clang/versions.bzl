# Copyright 2016 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License
"""Provides functionality to determine hosted configs based on Bazel version and
the container digest.

WARNING: Autogenerated file. Do not edit manually as changes may be overridden.
Contact repository owners if you wish to edit this file for instructions.
"""

_ENV1 = {
    "ABI_LIBC_VERSION": "glibc_2.19",
    "ABI_VERSION": "clang",
    "BAZEL_COMPILER": "clang",
    "BAZEL_HOST_SYSTEM": "i686-unknown-linux-gnu",
    "BAZEL_TARGET_CPU": "k8",
    "BAZEL_TARGET_LIBC": "glibc_2.19",
    "BAZEL_TARGET_SYSTEM": "x86_64-unknown-linux-gnu",
    "CC": "clang",
    "CC_TOOLCHAIN_NAME": "linux_gnu_x86",
}

_TOOLCHAIN_CONFIG_SPEC1 = struct(
    name = "9.0.0",
    java_home = "/usr/lib/jvm/java-8-openjdk-amd64",
    create_java_configs = True,
    create_cc_configs = True,
    config_repos = [],
    env = _ENV1,
)

_ENV2 = {
    "ABI_LIBC_VERSION": "glibc_2.19",
    "ABI_VERSION": "clang",
    "BAZEL_COMPILER": "clang",
    "BAZEL_HOST_SYSTEM": "i686-unknown-linux-gnu",
    "BAZEL_TARGET_CPU": "k8",
    "BAZEL_TARGET_LIBC": "glibc_2.19",
    "BAZEL_TARGET_SYSTEM": "x86_64-unknown-linux-gnu",
    "CC": "clang",
    "CC_TOOLCHAIN_NAME": "linux_gnu_x86",
}

_TOOLCHAIN_CONFIG_SPEC2 = struct(
    name = "8.0.0",
    java_home = "/usr/lib/jvm/java-8-openjdk-amd64",
    create_java_configs = True,
    create_cc_configs = True,
    config_repos = [],
    env = _ENV2,
)

_TOOLCHAIN_CONFIG_SPECS = [_TOOLCHAIN_CONFIG_SPEC1, _TOOLCHAIN_CONFIG_SPEC2]

_DEFAULT_TOOLCHAIN_CONFIG_SPEC = _TOOLCHAIN_CONFIG_SPEC1

# Returns a dict with suppported Bazel versions mapped to the config version to use.
_BAZEL_TO_CONFIG_SPEC_NAMES = {
    "0.20.0": ["8.0.0"],
    "0.21.0": ["8.0.0"],
    "0.22.0": ["8.0.0", "9.0.0"],
    "0.23.0": ["8.0.0", "9.0.0"],
    "0.23.1": ["8.0.0", "9.0.0"],
    "0.23.2": ["9.0.0"],
    "0.24.0": ["9.0.0"],
    "0.24.1": ["9.0.0"],
    "0.25.0": ["9.0.0"],
    "0.25.1": ["9.0.0"],
    "0.25.2": ["9.0.0"],
    "0.26.0": ["9.0.0"],
    "0.26.1": ["9.0.0"],
}

# sha256 digest of the latest version of the toolchain container.
LATEST = "sha256:94d7d8552902d228c32c8c148cc13f0effc2b4837757a6e95b73fdc5c5e4b07b"

# Map from sha256 of the toolchain container to corresponding major container
# versions.
_CONTAINER_TO_CONFIG_SPEC_NAMES = {
    "sha256:677c1317f14c6fd5eba2fd8ec645bfdc5119f64b3e5e944e13c89e0525cc8ad1": ["9.0.0"],
    "sha256:69c9f1652941d64a46f6f7358a44c1718f25caa5cb1ced4a58ccc5281cd183b5": ["9.0.0"],
    "sha256:823aa3cc811b40d8cd7a8df529553ceb8a49bf2adffcebedc4e49dbd8daafca0": ["9.0.0"],
    "sha256:87fe00c5c4d0e64ab3830f743e686716f49569dadb49f1b1b09966c1b36e153c": ["8.0.0"],
    "sha256:94d7d8552902d228c32c8c148cc13f0effc2b4837757a6e95b73fdc5c5e4b07b": ["9.0.0"],
    "sha256:9bd8ba020af33edb5f11eff0af2f63b3bcb168cd6566d7b27c6685e717787928": ["8.0.0"],
    "sha256:bc6a2ad47b24d01a73da315dd288a560037c51a95cc77abb837b26fef1408798": ["9.0.0"],
    "sha256:da0f21c71abce3bbb92c3a0c44c3737f007a82b60f8bd2930abc55fe64fc2729": ["9.0.0"],
    "sha256:f3120a030a19d67626ababdac79cc787e699a1aa924081431285118f87e7b375": ["8.0.0"],
    "sha256:fbd499b53a377fe2c6c5e65c33bdecd9393871e19a64eaf785fb6491f31849d3": ["9.0.0"],
}

TOOLCHAIN_CONFIG_AUTOGEN_SPEC = struct(
    bazel_to_config_spec_names_map = _BAZEL_TO_CONFIG_SPEC_NAMES,
    container_to_config_spec_names_map = _CONTAINER_TO_CONFIG_SPEC_NAMES,
    default_toolchain_config_spec = _DEFAULT_TOOLCHAIN_CONFIG_SPEC,
    latest_container = LATEST,
    toolchain_config_specs = _TOOLCHAIN_CONFIG_SPECS,
)
