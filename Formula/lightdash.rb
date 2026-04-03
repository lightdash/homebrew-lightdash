class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2723.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2723.1/lightdash-cli-0.2723.1-macos-arm64.tar.gz"
      sha256 "1180a605e5da6c96c6f7a0b4bda2f43cb09f4283d3b0572d4b3b02f8557a18ba"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2723.1/lightdash-cli-0.2723.1-macos-x64.tar.gz"
      sha256 "9c756326739896057f0a4591e76babe6762bbb911e02c3519298b37912f76803"
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
