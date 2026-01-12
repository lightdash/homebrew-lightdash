class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2330.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2330.0/lightdash-cli-0.2330.0-macos-arm64.tar.gz"
      sha256 "e14847e61cb8bd92582d8a53600baebbbcb9c7e4188ace76230766164b45c7d5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2330.0/lightdash-cli-0.2330.0-macos-x64.tar.gz"
      sha256 "12d05873282e46bb5f8c41d6b9355e970d179d4238f301d00eb62cdb6c6b9370"
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
