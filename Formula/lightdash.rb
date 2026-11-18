class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.318.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.318.0/lightdash-cli-3.318.0-macos-arm64.tar.gz"
      sha256 "dc48b57a599ebb12919a03bfed4c3b5901e30c6108a88fc8e59a8bab85c8b428"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.318.0/lightdash-cli-3.318.0-macos-x64.tar.gz"
      sha256 "709b8b54ce3d55e80108285fddb6437d6ebf8758f1d2c7457eec10aaa660b2db"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.318.0/lightdash-cli-3.318.0-linux-x64.tar.gz"
    sha256 "36bd0558dbf46b0ad0597d90102e9e58a0e7d972ac4a7c410f3bcfa67609f8a8"

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
