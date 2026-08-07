class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.99.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.99.0/lightdash-cli-1.99.0-macos-arm64.tar.gz"
      sha256 "5645aa0cf4839030c05bb9f1297dcdf58889ba1fc2f3a86c67c7f92af30b3e3e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.99.0/lightdash-cli-1.99.0-macos-x64.tar.gz"
      sha256 "6771d9e4b03a770dbe14091149c17d9ee64c89eb36c7a9c2c1c8f04148c033f4"
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
