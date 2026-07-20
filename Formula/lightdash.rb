class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3424.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3424.1/lightdash-cli-0.3424.1-macos-arm64.tar.gz"
      sha256 "c3ff8e4cfbd38690a601e9d03a4ac17b35dc48d6b238082075578c508dec9f31"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3424.1/lightdash-cli-0.3424.1-macos-x64.tar.gz"
      sha256 "e372215b1e2c720f4319bfb30a251a1aaf7d2ea1731c312064dc7fb734bb9fce"
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
