class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2395.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2395.0/lightdash-cli-0.2395.0-macos-arm64.tar.gz"
      sha256 "844cc31af89b9b4b1f981d116a99e7accf05923181a97ffce5c0dd40e7384115"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2395.0/lightdash-cli-0.2395.0-macos-x64.tar.gz"
      sha256 "adb1c846b49987a1f68c84976ab938e765c9ea447c6aea841b04bbdaa9ded877"
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
