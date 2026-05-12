class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2917.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2917.1/lightdash-cli-0.2917.1-macos-arm64.tar.gz"
      sha256 "e4f525a35c97bc1215691aec94b09e5f2239891063dd38bb21f2612b58f4a9e5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2917.1/lightdash-cli-0.2917.1-macos-x64.tar.gz"
      sha256 "acdd25b8df07723a765b0e895a523d39001276d7fe4ef8b88cdad7b3de2e4e67"
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
