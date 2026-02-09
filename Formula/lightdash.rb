class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2439.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2439.2/lightdash-cli-0.2439.2-macos-arm64.tar.gz"
      sha256 "d0e38eb1fbfbaaf5830b3e61131f23e1648573045cfd2e574cd94dbf8b0eeb83"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2439.2/lightdash-cli-0.2439.2-macos-x64.tar.gz"
      sha256 "69d85e8a02c3bfed2beadb16b0482a26b7586f4573067ef3636e87c7a3bcbef6"
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
