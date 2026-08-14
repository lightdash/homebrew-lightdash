class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.160.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.160.1/lightdash-cli-1.160.1-macos-arm64.tar.gz"
      sha256 "a9f7229552c7027d9849fe548f900105fe28dad44a5e16f52b043e58b68c34f6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.160.1/lightdash-cli-1.160.1-macos-x64.tar.gz"
      sha256 "9fd06dd0f61eae83731d255de3dcf5ff6be51c940448dad6ef08e2c029a5c358"
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
