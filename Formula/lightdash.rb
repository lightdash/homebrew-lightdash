class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.247.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.247.0/lightdash-cli-1.247.0-macos-arm64.tar.gz"
      sha256 "d75eaadb69de1011bd3a47241f504a0ea20b54f828f5928363372f0104416c0b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.247.0/lightdash-cli-1.247.0-macos-x64.tar.gz"
      sha256 "a7cab52ccfd490a57ce564fb8208da5e84647d287ec885159e8b0dcd26dfde95"
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
