class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2268.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2268.0/lightdash-cli-0.2268.0-macos-arm64.tar.gz"
      sha256 "78b74f39458edf5672f120a37c728d9205e17136e647c04c7a9d75cd1379fa74"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2268.0/lightdash-cli-0.2268.0-macos-x64.tar.gz"
      sha256 "0dafcf7af2ba75a63a97c2d868dd3d4e3d54a4081bf97cf2341ec1b2f9c849a4"
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
