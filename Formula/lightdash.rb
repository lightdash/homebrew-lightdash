class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.35.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.35.2/lightdash-cli-2.35.2-macos-arm64.tar.gz"
      sha256 "098f04522794eb1694e8ccee21cc7b2765072d31ae5ac9f5410aaba073054c8d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.35.2/lightdash-cli-2.35.2-macos-x64.tar.gz"
      sha256 "7968b1ca8a447a27d94c7cbd530607bcc7bcc2fc4d4fbdc567bf39af4e07abe0"
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
