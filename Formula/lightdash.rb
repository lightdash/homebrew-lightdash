class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.86.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.86.0/lightdash-cli-1.86.0-macos-arm64.tar.gz"
      sha256 "c147d63a42ddbd55e1b59bd53da47970265687f5714023d47018e4957d872304"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.86.0/lightdash-cli-1.86.0-macos-x64.tar.gz"
      sha256 "dce726f96dc33a66355e133a363c4734ea364f723e2041e915ad4163fe21fbd8"
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
