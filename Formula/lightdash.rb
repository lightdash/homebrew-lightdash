class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.97.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.97.1/lightdash-cli-2.97.1-macos-arm64.tar.gz"
      sha256 "73b2e066340588ca6bbaeb2b6e3ab23e5d6eaa47560520b8daf5cf3886e9acc4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.97.1/lightdash-cli-2.97.1-macos-x64.tar.gz"
      sha256 "901231cb63fb96af41b06519a92612bcb5b75f9c03aba19148d2ab6c42bf7c51"
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
