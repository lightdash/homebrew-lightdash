class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2725.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2725.0/lightdash-cli-0.2725.0-macos-arm64.tar.gz"
      sha256 "fdeef007150fa6e75c53e6d2071234874f156ee25f3c5eed823c26b36ef6b5be"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2725.0/lightdash-cli-0.2725.0-macos-x64.tar.gz"
      sha256 "8ad209b0c9468eef1551aa0f12920d05a9023f479550dec7af47f84c151a8506"
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
