class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.59.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.59.0/lightdash-cli-2.59.0-macos-arm64.tar.gz"
      sha256 "64f8c787600f95ad0b589ad344fb57b8054d74f93da73d54cb4361aee3b95a3b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.59.0/lightdash-cli-2.59.0-macos-x64.tar.gz"
      sha256 "e03b2e59a3414843bb23a11c7ad218ffc57085da21dc06a9004ab269ab3e9c4e"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
