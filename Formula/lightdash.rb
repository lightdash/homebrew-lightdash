class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.144.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.144.1/lightdash-cli-1.144.1-macos-arm64.tar.gz"
      sha256 "048258b24412009b47e4b00fc3c61f46b48c439a7ac6f013c0effe9fc5a32deb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.144.1/lightdash-cli-1.144.1-macos-x64.tar.gz"
      sha256 "abb19b3508555729bbe7f70a7536b31f5244096fa77e7385e72c5d078c9272b6"
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
