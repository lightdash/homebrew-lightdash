class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2516.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2516.0/lightdash-cli-0.2516.0-macos-arm64.tar.gz"
      sha256 "e456e059c3e93238b8a1686621a9efdb4fb3c24030401cf56c12b052c5201ec3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2516.0/lightdash-cli-0.2516.0-macos-x64.tar.gz"
      sha256 "8a026e72817f84ba7c92354c7bb4ca7b10d68a53aa656b15d16ded15e2cb4123"
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
