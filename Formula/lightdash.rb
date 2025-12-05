class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2233.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2233.0/lightdash-cli-0.2233.0-macos-arm64.tar.gz"
      sha256 "dce19604de4bdbae9fecf6ebfd2b60b1e7726df6f9dc989f60d3b07891cc3c96"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2233.0/lightdash-cli-0.2233.0-macos-x64.tar.gz"
      sha256 "4e1927b4a921b82b41da3602d971399c13fbc872a0b40c0a6c30d3c77ca22771"
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
