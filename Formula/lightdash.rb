class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3124.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3124.2/lightdash-cli-0.3124.2-macos-arm64.tar.gz"
      sha256 "8a4e691764047f91ec1c9723a5f627a52e03694cda342ff5c056f9fc27af6cf7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3124.2/lightdash-cli-0.3124.2-macos-x64.tar.gz"
      sha256 "e2c59c81af3f2072bbf9ff7c8750362f17aac899459bd6a9bf04c0a02f02b4c4"
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
