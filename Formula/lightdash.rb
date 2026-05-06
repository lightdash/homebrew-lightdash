class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2879.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2879.0/lightdash-cli-0.2879.0-macos-arm64.tar.gz"
      sha256 "62563b99e9350760735ebe499aa8e8012019e125489e98486bb1e737bf8f8c93"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2879.0/lightdash-cli-0.2879.0-macos-x64.tar.gz"
      sha256 "fda7dcd26f9349f06a792419f4383b5e3afb6a1b3522d4971320c9ee2f331cfc"
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
