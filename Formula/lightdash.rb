class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2496.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2496.0/lightdash-cli-0.2496.0-macos-arm64.tar.gz"
      sha256 "0f3f712548068b9f0c203d6a6f1697923d65c3fe67ffeb5fa6e2a6ebe69fc7d6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2496.0/lightdash-cli-0.2496.0-macos-x64.tar.gz"
      sha256 "e67b923e432fc8c00dd50675b11da52ba493226df867c021690d74a321b998c3"
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
