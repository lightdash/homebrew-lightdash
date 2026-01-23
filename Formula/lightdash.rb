class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2373.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2373.0/lightdash-cli-0.2373.0-macos-arm64.tar.gz"
      sha256 "fe3a0a1a98b5108d04222b2d01d4655aa625e7c5cb3c7ac237cca1e0db35625d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2373.0/lightdash-cli-0.2373.0-macos-x64.tar.gz"
      sha256 "d1dda696106412e653c95849c801f453b7446cc4e33dda943fa6340b44c8a79b"
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
