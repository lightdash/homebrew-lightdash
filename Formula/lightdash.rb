class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.225.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.225.0/lightdash-cli-2.225.0-macos-arm64.tar.gz"
      sha256 "5dd787d1fdafec2c4597e78ddc00eb4cd500175f62679e556282c6b5d86cb103"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.225.0/lightdash-cli-2.225.0-macos-x64.tar.gz"
      sha256 "304e6087576b3a5542a7dc9c6a73826516c68d1529133bf14f620b5fabf73190"
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
