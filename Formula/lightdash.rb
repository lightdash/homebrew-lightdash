class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2412.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2412.1/lightdash-cli-0.2412.1-macos-arm64.tar.gz"
      sha256 "dc8282070f2c3bc549fde824c5a6a3798af8b07f37be616096416a6b3a03258c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2412.1/lightdash-cli-0.2412.1-macos-x64.tar.gz"
      sha256 "262dcb45afd7680b6eacdae35b531c2ffba2c30e30d5be517dd6e6bd90ecce5d"
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
