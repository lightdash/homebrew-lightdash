class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2329.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2329.1/lightdash-cli-0.2329.1-macos-arm64.tar.gz"
      sha256 "a534f1f8cfad52a940e464a442a6e30209ea6e522fdc48b7bb90e054a5a71121"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2329.1/lightdash-cli-0.2329.1-macos-x64.tar.gz"
      sha256 "ee0ee0f3dddd066f416719bf94255ab48fe58ce57806aead35cd5d39cc8ee5e4"
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
