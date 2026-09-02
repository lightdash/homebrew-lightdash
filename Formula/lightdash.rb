class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.100.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.100.0/lightdash-cli-2.100.0-macos-arm64.tar.gz"
      sha256 "83baa32b06d983ac551397e4fc1abb379b4362037498c2a1193368ffcd7ac9d5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.100.0/lightdash-cli-2.100.0-macos-x64.tar.gz"
      sha256 "bbd5f7a9e65e8fccf15b0c380fc61af2e918442ccfbee8523e1d65822f35a2bd"
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
