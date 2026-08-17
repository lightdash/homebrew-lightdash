class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.172.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.172.2/lightdash-cli-1.172.2-macos-arm64.tar.gz"
      sha256 "bf74840760361df70634a66d4702de645e9d90fd70dc0d2564effc37aaf76b2a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.172.2/lightdash-cli-1.172.2-macos-x64.tar.gz"
      sha256 "9b266b63d020c5a5a077fa55f5d80a4efed250ba3bf33ad9ac7b99e76c6c9cb5"
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
