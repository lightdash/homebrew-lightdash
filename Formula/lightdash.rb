class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3025.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3025.0/lightdash-cli-0.3025.0-macos-arm64.tar.gz"
      sha256 "295900c99f04e18c9604bebacd2c665e7992895ca0b80d4f95f8049fb966428a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3025.0/lightdash-cli-0.3025.0-macos-x64.tar.gz"
      sha256 "e9d711ca866f9634d9a137d2a2c009850eee525eee155ae9afd888ef53fa273a"
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
