class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2789.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2789.1/lightdash-cli-0.2789.1-macos-arm64.tar.gz"
      sha256 "08af1b2c29e461a82c919b5ccc4d5704f9e4bbe584cd2afeaf64b86973f9926a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2789.1/lightdash-cli-0.2789.1-macos-x64.tar.gz"
      sha256 "dabb1849e66ef571fc5e570494b754b94c0f98263296cda20a6385d2f0d9b827"
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
