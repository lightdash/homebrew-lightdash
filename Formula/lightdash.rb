class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2512.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2512.1/lightdash-cli-0.2512.1-macos-arm64.tar.gz"
      sha256 "24bb2f960bb7a53988a27ed2dfe7f09fc16bcf23cedd6b9f188f4453193497c6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2512.1/lightdash-cli-0.2512.1-macos-x64.tar.gz"
      sha256 "85cc42bbc543a14df81ccd505dd79d020c66c9c29b6c5c90054a5e20ac5afef1"
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
