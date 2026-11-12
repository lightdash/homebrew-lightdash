class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.223.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.223.0/lightdash-cli-3.223.0-macos-arm64.tar.gz"
      sha256 "91768d0b5af1bf54a0e4e59acba9b5c31f52b323d42f3a4a8d8ecdca4c45dbe1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.223.0/lightdash-cli-3.223.0-macos-x64.tar.gz"
      sha256 "9a8b33b1237fa7e31234b85a53938c11450be2ae2c2d2b300bf182d15139871b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.223.0/lightdash-cli-3.223.0-linux-x64.tar.gz"
    sha256 "9c8a18b49854918b89cd20ca628019b83d008c689567358024f0d61e410e0272"

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
