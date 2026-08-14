class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.154.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.154.2/lightdash-cli-1.154.2-macos-arm64.tar.gz"
      sha256 "989a6f5536a6bbb27ccbc313f5d77f9fd12a0bc0911e89268e8d04a4185bf569"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.154.2/lightdash-cli-1.154.2-macos-x64.tar.gz"
      sha256 "ecd3d78a0eb1f9b2589142f89300ce00480c309ce891c503a0a52ddfe017c9a6"
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
