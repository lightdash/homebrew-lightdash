class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3104.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3104.2/lightdash-cli-0.3104.2-macos-arm64.tar.gz"
      sha256 "2d888c5e25e6fbabf382ccc9c5b160fcfb36ac6042e580b8ae428851f13df9d0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3104.2/lightdash-cli-0.3104.2-macos-x64.tar.gz"
      sha256 "052c394c940534e487844f26f26007df30f3c20b7c37a2215903ed7d55b1d377"
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
