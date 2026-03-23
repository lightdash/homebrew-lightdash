class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2651.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2651.0/lightdash-cli-0.2651.0-macos-arm64.tar.gz"
      sha256 "42805cb81cc1a7e5a052fa9c4941900d020c134fb0ae0adf98a487e6b063e9df"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2651.0/lightdash-cli-0.2651.0-macos-x64.tar.gz"
      sha256 "476a83e178c660cdc0e1901ccbf59d8248f0f3e832d920772d07a21ea0156622"
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
