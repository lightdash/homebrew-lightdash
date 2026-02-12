class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2458.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2458.2/lightdash-cli-0.2458.2-macos-arm64.tar.gz"
      sha256 "39431701170e2696e1344a34ab7a1b437f5cd13e5ff9c33979438f501e055154"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2458.2/lightdash-cli-0.2458.2-macos-x64.tar.gz"
      sha256 "2a46358fc3fcf2dfae18dd57f83143638780313980e163856945316784d703db"
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
