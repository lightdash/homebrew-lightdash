class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2591.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2591.1/lightdash-cli-0.2591.1-macos-arm64.tar.gz"
      sha256 "742b51272de4fd2f0737ed86d1e68ed39a123cb699b91651b9ed3f8e70aac1b9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2591.1/lightdash-cli-0.2591.1-macos-x64.tar.gz"
      sha256 "6d12f187be8ebd110ebe0a82d7ff857ee878baf3161fec86793acae2d6b9b541"
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
