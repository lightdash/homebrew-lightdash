class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2696.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2696.0/lightdash-cli-0.2696.0-macos-arm64.tar.gz"
      sha256 "368f0b992ed7e67202b122735351e866fc796c08bbe76cfe3a2cb8971dec0342"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2696.0/lightdash-cli-0.2696.0-macos-x64.tar.gz"
      sha256 "d5258c86420962c2874c8b0834ce7f9fbee50f414edfe6170255902cbf19d336"
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
