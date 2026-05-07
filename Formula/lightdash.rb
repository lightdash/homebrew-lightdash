class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2894.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2894.0/lightdash-cli-0.2894.0-macos-arm64.tar.gz"
      sha256 "7f0977e18cbe8ae83e66e04c4cf0eaee5f1a1a278c1e6bdc6fbbf64a989c860b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2894.0/lightdash-cli-0.2894.0-macos-x64.tar.gz"
      sha256 "821034ec64c62f320a0bd03ecabeea8b06d8149fbf1f0ff137bbf7d3c7326c12"
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
