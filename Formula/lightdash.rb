class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.190.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.190.0/lightdash-cli-1.190.0-macos-arm64.tar.gz"
      sha256 "aea0fe677e8fc2007531683015818850250836be2c473942ba16f9d800e0d27b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.190.0/lightdash-cli-1.190.0-macos-x64.tar.gz"
      sha256 "ba328ed97e29c219149d04059940063fb60d77ed4ff879f4cd76e1ae94a11813"
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
