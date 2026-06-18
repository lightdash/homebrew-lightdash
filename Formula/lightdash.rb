class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3187.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3187.1/lightdash-cli-0.3187.1-macos-arm64.tar.gz"
      sha256 "14d1d6a91880d1d7c721052787e7536c88d0b3f6d762f5f179bd93d9da020cc0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3187.1/lightdash-cli-0.3187.1-macos-x64.tar.gz"
      sha256 "db8f8648bc652417e11ff23c05466ecd3b652d2850ab54c1f6360650b045317b"
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
