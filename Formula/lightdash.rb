class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2903.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2903.5/lightdash-cli-0.2903.5-macos-arm64.tar.gz"
      sha256 "aa3deaf6465e57a2c8db7f1a38f86ca29d17a6858d084dca2f7456af2e692aab"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2903.5/lightdash-cli-0.2903.5-macos-x64.tar.gz"
      sha256 "e86cad50d351ce8d03b37c7c58bad1110b6fb03a10adac9a6eafae42d1ec071b"
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
