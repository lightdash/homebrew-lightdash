class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2721.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2721.2/lightdash-cli-0.2721.2-macos-arm64.tar.gz"
      sha256 "44b642393787639e621d04656626e93a79bbfca06ccb0f25e0d2f08b542c716b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2721.2/lightdash-cli-0.2721.2-macos-x64.tar.gz"
      sha256 "c5d75fa42012e2059e143b9edf61d00929af9567a0aad20e33dfce44314bf762"
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
