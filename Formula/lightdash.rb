class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.75.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.75.0/lightdash-cli-1.75.0-macos-arm64.tar.gz"
      sha256 "6856888060a65d650732d5000a13f63ddc14731f7ed77cc64512fe8f175b07c6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.75.0/lightdash-cli-1.75.0-macos-x64.tar.gz"
      sha256 "13038938de27389037cad4aa63c82217563c034c7db0fe8670768b274cca028a"
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
