use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

config :nerves_system_rpi2, :nerves_env,
  type:  :system,
  version: version,
  mirrors: [
    "https://github.com/nerves-project/nerves_system_rpi2/releases/download/v#{version}/nerves_system_rpi2-v#{version}.tar.gz",
    "https://s3.amazonaws.com/nerves/artifacts/nerves_system_rpi2-#{version}.tar.gz"],
  build_platform: Nerves.System.Platforms.BR,
  build_config: [
    defconfig: "nerves_defconfig",
    package_files: [
      "rootfs-additions",
      "linux-4.1.defconfig",
      "fwup.conf",
      "cmdline.txt",
      "config.txt",
      "post-createfs.sh"
    ]
  ]
