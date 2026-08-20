class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.215.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.215.0/lightdash-cli-1.215.0-macos-arm64.tar.gz"
      sha256 "6a23746420bb5c0cf40f9bdcdddd391e8c26aa0d22e61e23465a4e9b54b00804"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.215.0/lightdash-cli-1.215.0-macos-x64.tar.gz"
      sha256 "fec473e1da84822d9b6dd9e048ad4b7ba2f346555aaab3e58556aa390c6dad71"
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
