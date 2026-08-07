class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.98.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.98.0/lightdash-cli-1.98.0-macos-arm64.tar.gz"
      sha256 "49c47ecb4e6f92b070ef64615f6c93dd503c79c8c624d7eec916797a2269d9e8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.98.0/lightdash-cli-1.98.0-macos-x64.tar.gz"
      sha256 "7a9ed4154163ec883a1b7b90dd9e6196f73786734e5ea79169a8a990e6f424ae"
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
