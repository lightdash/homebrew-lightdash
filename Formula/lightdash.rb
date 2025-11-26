class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2209.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2209.4/lightdash-cli-0.2209.4-macos-arm64.tar.gz"
      sha256 "4e569dd2d6de50d4f39e3a0e03d1eb5d6b9da0ba0415f718a849d8108b6e664a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2209.4/lightdash-cli-0.2209.4-macos-x64.tar.gz"
      sha256 "4ce3e3a5b98dbc5b9dc5b869cbb842ca8f4653e4389f38013a76cb9b195fd5b3"
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
