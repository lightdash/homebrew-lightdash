class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2374.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2374.0/lightdash-cli-0.2374.0-macos-arm64.tar.gz"
      sha256 "9a8685d36784e57e3143977c4df282bf9e0a3acc77f0fd632acfce4c56c016fe"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2374.0/lightdash-cli-0.2374.0-macos-x64.tar.gz"
      sha256 "6dede04a100698130c441e017f1393f24c78b587ba2d81de9d625f2d92de8951"
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
