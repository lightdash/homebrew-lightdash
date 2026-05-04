class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2864.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2864.1/lightdash-cli-0.2864.1-macos-arm64.tar.gz"
      sha256 "156aea760214fc52eb9774ce5022d5beece179c8e6b5c534e059c9a4def759d6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2864.1/lightdash-cli-0.2864.1-macos-x64.tar.gz"
      sha256 "5f3d024c487cf151a1ad240952e89b6d32075d4f10ca4550547a45eaba503d06"
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
