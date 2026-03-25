class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2664.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2664.1/lightdash-cli-0.2664.1-macos-arm64.tar.gz"
      sha256 "6bd3a0908be038937dac7eae0fac33e048f7398fe3a0ee64d149f7da80d46a91"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2664.1/lightdash-cli-0.2664.1-macos-x64.tar.gz"
      sha256 "b7b94dc3ebe3ec64fbb681ff9dd1951ead1db8124fc0c71a9dcc18e72370f72d"
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
