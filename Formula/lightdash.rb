class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2523.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2523.3/lightdash-cli-0.2523.3-macos-arm64.tar.gz"
      sha256 "eb133dfc463d9136e4f249ac4c427510a78a0287afabe0691c6cab249b480427"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2523.3/lightdash-cli-0.2523.3-macos-x64.tar.gz"
      sha256 "6aaa1bb21edcaa11ab0ad8218395950e7a9f61737235f1c1ced9575403e361e4"
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
