class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2589.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2589.1/lightdash-cli-0.2589.1-macos-arm64.tar.gz"
      sha256 "7be2546625a39a6fdca3c90861118cfe2a2a9ed4de5c8e5b280c6222cd1edee1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2589.1/lightdash-cli-0.2589.1-macos-x64.tar.gz"
      sha256 "8187eac3b5f76268489df1a1f9f0b1b5bb2dec8f2fa47b4aeb4bc6c12db347d6"
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
