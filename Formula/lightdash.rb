class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2444.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2444.2/lightdash-cli-0.2444.2-macos-arm64.tar.gz"
      sha256 "4054a94edf9e091ab2a882d9a4506e3c6a98ed7404b2b497842558dd85e7d645"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2444.2/lightdash-cli-0.2444.2-macos-x64.tar.gz"
      sha256 "e30605688e3ed3ee9eb07b953570816fba7a57da31d8a67fbd48f830774aa93a"
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
