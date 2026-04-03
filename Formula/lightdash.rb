class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2724.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2724.0/lightdash-cli-0.2724.0-macos-arm64.tar.gz"
      sha256 "14e228d9037842002a5e819b08b323f4ed721ad2ef2a7f5bfec46115d438be40"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2724.0/lightdash-cli-0.2724.0-macos-x64.tar.gz"
      sha256 "a734d79d836fb91bdaf14b76c135bedd9c09fec06550913c9c328f51f8858ad1"
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
