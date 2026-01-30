class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2403.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2403.1/lightdash-cli-0.2403.1-macos-arm64.tar.gz"
      sha256 "b680aac146b2770ef27538ef1d9fd7bf0164fb02e99d1851b190fbe5ff286b85"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2403.1/lightdash-cli-0.2403.1-macos-x64.tar.gz"
      sha256 "a46404fda729342e2a688e4e4ec15a735a7a1b58daa6c195fdc540637f0c1f16"
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
