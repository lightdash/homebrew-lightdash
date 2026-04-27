class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2815.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2815.0/lightdash-cli-0.2815.0-macos-arm64.tar.gz"
      sha256 "7cf1f527c9c5bc642ba013a3bdf7511adde49ccbcd58e1e0375cdedb93421d40"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2815.0/lightdash-cli-0.2815.0-macos-x64.tar.gz"
      sha256 "dba3db0b2bfc27e5af3812511dfe3e26551e993d028356606cc11f2ed16b0e55"
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
