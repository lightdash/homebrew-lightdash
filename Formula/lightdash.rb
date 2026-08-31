class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.58.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.58.0/lightdash-cli-2.58.0-macos-arm64.tar.gz"
      sha256 "2e05540b972fd7a8f47487bf851c73104f82fc1540fd39028d0fbbe8525e9775"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.58.0/lightdash-cli-2.58.0-macos-x64.tar.gz"
      sha256 "05b27b39dbf6ca658449b7ed8a37c32e1efcbfbcd63e9e0b94d91257b342f62c"
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
