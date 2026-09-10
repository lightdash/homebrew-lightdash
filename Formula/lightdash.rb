class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.185.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.185.0/lightdash-cli-2.185.0-macos-arm64.tar.gz"
      sha256 "2e15faa2d053686089f8a35e848ca91083267cf2af1a1172029eb23842c6b0a5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.185.0/lightdash-cli-2.185.0-macos-x64.tar.gz"
      sha256 "09f2433106899490a692b21f354b2498a3327fff8add61d8b772e4a31b03fa88"
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
