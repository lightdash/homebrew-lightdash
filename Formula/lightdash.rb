class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.163.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.163.3/lightdash-cli-1.163.3-macos-arm64.tar.gz"
      sha256 "0eb532aea266d1b837d2ac928032f1d9f40a7eb4e71d4d60bf8caff024cdb5e8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.163.3/lightdash-cli-1.163.3-macos-x64.tar.gz"
      sha256 "613d112362e1ea43c5dab715f5446a8e73204da184e561defe9b98240efc0a3a"
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
