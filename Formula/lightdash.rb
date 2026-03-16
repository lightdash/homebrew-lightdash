class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2622.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2622.0/lightdash-cli-0.2622.0-macos-arm64.tar.gz"
      sha256 "6612a18e5cb85d70247bcf5d4fb0c6ebcf1fc9ea872bfe2a20a7c82c47154e3b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2622.0/lightdash-cli-0.2622.0-macos-x64.tar.gz"
      sha256 "510c5246cf2948acc0c69b446a33ca6d9b0bae68374b0720fc9e891baa1769f6"
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
