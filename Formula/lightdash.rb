class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2910.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2910.0/lightdash-cli-0.2910.0-macos-arm64.tar.gz"
      sha256 "3886e132a05aaac42951eb2280460b7c16432652d9d5c34c23a9287dd9b3de78"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2910.0/lightdash-cli-0.2910.0-macos-x64.tar.gz"
      sha256 "a96223df7e7c90269e69604025734105a06e4f98eab6f270832da1a04e50adc7"
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
