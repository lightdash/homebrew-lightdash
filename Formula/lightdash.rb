class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2500.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2500.0/lightdash-cli-0.2500.0-macos-arm64.tar.gz"
      sha256 "e9f4237c8f49f9b1c9424a14da2421d15b50a149cfa9fd75b73f1c36e320cf71"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2500.0/lightdash-cli-0.2500.0-macos-x64.tar.gz"
      sha256 "3ce32ffb63bebfe0b601155f0efd58d26cb55efe6063a78b9e21cf45e002b678"
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
