class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.196.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.196.1/lightdash-cli-1.196.1-macos-arm64.tar.gz"
      sha256 "92c43314ceb2bfa79b0feb7c93f570bc6a6d06506f446e7bfe003e3770f358b7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.196.1/lightdash-cli-1.196.1-macos-x64.tar.gz"
      sha256 "fff428b6a0708e11487616f17a151cdba6651056035279defcd94fe1644e3afa"
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
