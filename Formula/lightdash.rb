class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.2.0/lightdash-cli-3.2.0-macos-arm64.tar.gz"
      sha256 "cb20a44ff3adb1c09d782f230eb3ba47fcc687639660bf5e07fed7fada445ae6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.2.0/lightdash-cli-3.2.0-macos-x64.tar.gz"
      sha256 "4ed50ccf492536435d475c30c31127252b1d53fc247cf79c61184e367353e955"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.2.0/lightdash-cli-3.2.0-linux-x64.tar.gz"
    sha256 "c54df15f5edcb8b24001b6c0578a69913658ea42f88ad8ce860ed6e2c3272366"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
