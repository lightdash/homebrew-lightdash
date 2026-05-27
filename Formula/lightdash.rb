class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3024.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3024.1/lightdash-cli-0.3024.1-macos-arm64.tar.gz"
      sha256 "96dbb5e3cb0a1d524edd625370064b17ff7c3f66058fdfc12676ae470114aa9f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3024.1/lightdash-cli-0.3024.1-macos-x64.tar.gz"
      sha256 "160af6573fb050c1b4cdf204f70a8274dc360da5fe1db3dfaa3e10627a0ee5cc"
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
