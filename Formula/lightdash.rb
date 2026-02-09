class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2445.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2445.0/lightdash-cli-0.2445.0-macos-arm64.tar.gz"
      sha256 "4c7f6f6303242544c3230e7acd38e653b20495e26e20b6adee3b417cd5b0f8de"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2445.0/lightdash-cli-0.2445.0-macos-x64.tar.gz"
      sha256 "382967820f98f372cc20f1196464ca97c41f0fbb6794303a36ca13499bf27751"
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
