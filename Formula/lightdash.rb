class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.99.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.99.0/lightdash-cli-2.99.0-macos-arm64.tar.gz"
      sha256 "e8f1a0fafb15a9fa83cdd679d546b6816ab635aa2c18d406310f272c2e7e457e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.99.0/lightdash-cli-2.99.0-macos-x64.tar.gz"
      sha256 "db778bb1af856a637525229504c4400737135d3e5633307073adfc76fc7254a1"
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
