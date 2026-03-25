class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2664.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2664.0/lightdash-cli-0.2664.0-macos-arm64.tar.gz"
      sha256 "919c4b520268b649bd9b49c2b1927dd54a10c431479822df37a689331ff6a8a6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2664.0/lightdash-cli-0.2664.0-macos-x64.tar.gz"
      sha256 "ce6fbe4253c35b06fba76be5a5c2e0b6b6fdec331f6ef02d8ceaa7288d04b531"
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
