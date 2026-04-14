class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2754.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2754.0/lightdash-cli-0.2754.0-macos-arm64.tar.gz"
      sha256 "c40736720757f00bba2632db7d158af30c3a2853e9984b09fd9f0231ca55b06a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2754.0/lightdash-cli-0.2754.0-macos-x64.tar.gz"
      sha256 "f2d20ebf0461fd7b6d09821cee2551823d1b18428d705731310d4da1ad7a9b2c"
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
