class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2358.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2358.0/lightdash-cli-0.2358.0-macos-arm64.tar.gz"
      sha256 "3da0d6f8f401b896a826a77ec9c9089431cb988cab3dc65a6b1a1fbf53be4f92"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2358.0/lightdash-cli-0.2358.0-macos-x64.tar.gz"
      sha256 "d58139c36aac2b089c92055f81dfdb0efb9dc7f83f21e3f413c98cdac45bb561"
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
