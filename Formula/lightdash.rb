class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2439.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2439.1/lightdash-cli-0.2439.1-macos-arm64.tar.gz"
      sha256 "e461248694bef4653a3de21b2574bf375b0f92bd4ddc55b6e9c85a07376fff66"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2439.1/lightdash-cli-0.2439.1-macos-x64.tar.gz"
      sha256 "cd1c107e4e0d60af7bf534adf99d80584741a63f619725177082c2b848f1a7cf"
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
