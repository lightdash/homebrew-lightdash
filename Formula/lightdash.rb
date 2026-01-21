class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2357.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2357.4/lightdash-cli-0.2357.4-macos-arm64.tar.gz"
      sha256 "38fd6e86fc1939cf73c974f52dd50065bab2c59c117051f777d774077edaaa2f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2357.4/lightdash-cli-0.2357.4-macos-x64.tar.gz"
      sha256 "109d87f586374b0ade90b2ecf8d4f11a3229977b37e57c01986eb5b2d1c6efeb"
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
