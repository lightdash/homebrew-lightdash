class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.150.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.150.0/lightdash-cli-1.150.0-macos-arm64.tar.gz"
      sha256 "3a99284db5b2bd3684ee15a5aa23d878e4e289ef864ea9f8e1de18de6b62770a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.150.0/lightdash-cli-1.150.0-macos-x64.tar.gz"
      sha256 "e6fe389a074bad10264eb3e2b71c40b297e96230546388545c9766e8fce8fab2"
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
