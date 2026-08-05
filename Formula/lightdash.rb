class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.87.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.87.0/lightdash-cli-1.87.0-macos-arm64.tar.gz"
      sha256 "8f035dec6c9197cdba4fd399529fcf3e54f1caacc67539487830e1725ef7f7f5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.87.0/lightdash-cli-1.87.0-macos-x64.tar.gz"
      sha256 "17330b52b0870171f494af8ab8f416ed5e1762661f8b97324066dd0f739e8f17"
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
