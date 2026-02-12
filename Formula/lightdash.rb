class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2457.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2457.1/lightdash-cli-0.2457.1-macos-arm64.tar.gz"
      sha256 "f02abd9e9d4bd2e9c8a8bd0fd84bdb8f481c7625644037c557b6a2fbd36cea21"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2457.1/lightdash-cli-0.2457.1-macos-x64.tar.gz"
      sha256 "a092508992d774a5664ad1b19201a62878816190ea075300d0a8839b0b5a9ff1"
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
