class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3365.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3365.2/lightdash-cli-0.3365.2-macos-arm64.tar.gz"
      sha256 "49b2423642321df49a36527026222c39d9b823c851ca10d631b3b54238596a84"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3365.2/lightdash-cli-0.3365.2-macos-x64.tar.gz"
      sha256 "a6222ada9ecd11f4f699db3418343daa3bce2674e389258465da62524a2d4c51"
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
