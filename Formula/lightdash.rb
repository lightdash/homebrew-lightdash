class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2904.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2904.4/lightdash-cli-0.2904.4-macos-arm64.tar.gz"
      sha256 "c3da86e913e6e1f4f4e7c771fc363f8ae1f60da2d7a7e30248d22116b8f68d75"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2904.4/lightdash-cli-0.2904.4-macos-x64.tar.gz"
      sha256 "28dd116b1a70aa0c0b2354db06ef778cb84e69214cfa3f430d0fc25cbee6c405"
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
