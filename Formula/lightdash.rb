class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2963.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2963.0/lightdash-cli-0.2963.0-macos-arm64.tar.gz"
      sha256 "2e9077849e9f6efcc6835683b70bbc0569d861a5946bddd135c854c0008adaac"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2963.0/lightdash-cli-0.2963.0-macos-x64.tar.gz"
      sha256 "950c6a42db79b4ee54d186b97647aa655d4f7b9ad2fbd9c19e0b5e90211e990a"
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
