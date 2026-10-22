class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.25.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.25.2/lightdash-cli-3.25.2-macos-arm64.tar.gz"
      sha256 "7457df0f87569a380ce36ee90ff885925e14e3d28af1bde72ce547cb603de065"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.25.2/lightdash-cli-3.25.2-macos-x64.tar.gz"
      sha256 "16ac858f419abb13f2c6c64efaec0d9ba91bad9ed50f206ebe41b5dd59fc709c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.25.2/lightdash-cli-3.25.2-linux-x64.tar.gz"
    sha256 "6fa9e2e0bef7b2f15e250610ebceffa91c2d093a08176c54dd498a7e876cf5b7"

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
