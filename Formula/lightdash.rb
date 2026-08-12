class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.134.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.134.1/lightdash-cli-1.134.1-macos-arm64.tar.gz"
      sha256 "5848d2a6a2f22ac3228c2c97eccdfb3cb00dc5585d989ae0757fd44f37f07f29"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.134.1/lightdash-cli-1.134.1-macos-x64.tar.gz"
      sha256 "27de932d3e0da287b8f2a09fc9417e2fbf1fed084103dc49eb3714c76fe2eecd"
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
