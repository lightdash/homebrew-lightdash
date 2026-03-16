class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2627.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2627.0/lightdash-cli-0.2627.0-macos-arm64.tar.gz"
      sha256 "7521653e2d9a82b82ef24c49d2d842d170f5e67e5fe5bdf9c75eb071ca48b280"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2627.0/lightdash-cli-0.2627.0-macos-x64.tar.gz"
      sha256 "1e8b346e235806fb334637ef37b19c89fa5082c00d9200455f2e81f2ab98ffbe"
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
