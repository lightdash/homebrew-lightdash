class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3359.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3359.0/lightdash-cli-0.3359.0-macos-arm64.tar.gz"
      sha256 "f09156d799d8dd335b38489bbfd1d2f67fa520347a0075497433ab21ae84ed9a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3359.0/lightdash-cli-0.3359.0-macos-x64.tar.gz"
      sha256 "a80bf362d7788a36b67b8d121235d0b51ed24741115c2b162199d51475ffe645"
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
