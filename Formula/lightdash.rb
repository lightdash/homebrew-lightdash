class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.7.0/lightdash-cli-1.7.0-macos-arm64.tar.gz"
      sha256 "0d0546f1215e29b1ea7388f6a79c22deb419a59201f4208ac8a0189f5201a67d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.7.0/lightdash-cli-1.7.0-macos-x64.tar.gz"
      sha256 "099ceb613ba011243891bd3479020298e2076295158d247f5bcfd810bb876513"
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
