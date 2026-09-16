class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.239.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.239.0/lightdash-cli-2.239.0-macos-arm64.tar.gz"
      sha256 "d422c90db3b1fc4bbc57e0afc7bbcc49eea7e18be8c8d00e41b71e59d7fce154"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.239.0/lightdash-cli-2.239.0-macos-x64.tar.gz"
      sha256 "46b5fca39ccfc0c0cd4a0f96c2d8aeac4038c0f162617e388198c6e7f85ec8de"
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
