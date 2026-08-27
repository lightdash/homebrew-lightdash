class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.41.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.41.0/lightdash-cli-2.41.0-macos-arm64.tar.gz"
      sha256 "07df9b43f3717da8cf862fb98e05b49003ac2a5b6664f157f681806e563156a7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.41.0/lightdash-cli-2.41.0-macos-x64.tar.gz"
      sha256 "bedbe900e70ec6654a8a6f8061e18394bd100aa5b46c095307ec2677d94fcaaa"
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
