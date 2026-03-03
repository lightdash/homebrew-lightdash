class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2554.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2554.1/lightdash-cli-0.2554.1-macos-arm64.tar.gz"
      sha256 "932fae4e1dc39a101937ab2e2e33af940bd7fdf64d6f9a9dcf36d8d6d6b2727b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2554.1/lightdash-cli-0.2554.1-macos-x64.tar.gz"
      sha256 "e1cc17a46f31803e7dcb4c125f2970d371132c554fdd219168465b562ff8ff3b"
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
