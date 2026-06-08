class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3106.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3106.0/lightdash-cli-0.3106.0-macos-arm64.tar.gz"
      sha256 "ae5cdbcefc44b86421680fcefb8ec3c431b4c5936ea7a1c804e247f6ad9c19b8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3106.0/lightdash-cli-0.3106.0-macos-x64.tar.gz"
      sha256 "5c6f6b767c249ca9d50aa3eeef38eea960cb8e38aafeb9e9f547a263f0077e16"
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
