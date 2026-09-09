class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.184.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.184.1/lightdash-cli-2.184.1-macos-arm64.tar.gz"
      sha256 "d9898e85822a1908e2ac1f2d56d78737f7472114da8fdfee7b2d7fed6b69e4c9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.184.1/lightdash-cli-2.184.1-macos-x64.tar.gz"
      sha256 "1f9d2a46a8defb09f84d58dbd37bcdc50f4bf29fe9b77966bbd5ecc4170c3391"
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
