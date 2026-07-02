class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3295.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3295.0/lightdash-cli-0.3295.0-macos-arm64.tar.gz"
      sha256 "3947bb8fc2aafc3e9f92c4e1868f7c19cdbdb8369f19553af5eaaa02b3318707"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3295.0/lightdash-cli-0.3295.0-macos-x64.tar.gz"
      sha256 "7258060c487882bdf69ea35c61a704633f0df3ffa3ded229db039a1c536616ca"
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
