use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

config :nerves_system_rpi2, :nerves_env,
  type:  :system,
  version: version,
  mirrors: [
    "https://github.com/PressY4EKG/nerves_system_rpi2/releases/download/v0.6.0-rtl-wifi-mod/nerves_system_rpi2.tar.gz"],
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
