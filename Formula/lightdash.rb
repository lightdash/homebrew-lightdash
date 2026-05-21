class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2998.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2998.0/lightdash-cli-0.2998.0-macos-arm64.tar.gz"
      sha256 "41784e83eab6b7c50ceaa7ec2dfe9b2acd1367afccd301e9ced89166fa47b446"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2998.0/lightdash-cli-0.2998.0-macos-x64.tar.gz"
      sha256 "1373baa8ddbd3ea073c66756a2425a5c6c2ce7c313a75514183443e3cacfc6ed"
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
