class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.137.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.137.1/lightdash-cli-1.137.1-macos-arm64.tar.gz"
      sha256 "1c785f3bbfb30d612f0b815ddbd80f25bde81a465e928ea6bcc6ded3a49eb4b4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.137.1/lightdash-cli-1.137.1-macos-x64.tar.gz"
      sha256 "16855a1eba37a027561def6949f332b770f2fa0d8b7f9f5fdd30cc8a3f6369d1"
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
