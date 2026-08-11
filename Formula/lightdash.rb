class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.126.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.126.0/lightdash-cli-1.126.0-macos-arm64.tar.gz"
      sha256 "2782af7dc56583fea766c118f0d2b7c7ccc19f908059ed2f1f6673e549a0327f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.126.0/lightdash-cli-1.126.0-macos-x64.tar.gz"
      sha256 "87a2ab7cb4244c9b27008b737b259095fd1ce39bde3315dc4ed156b4b7916bba"
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
