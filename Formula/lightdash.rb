class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3113.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3113.0/lightdash-cli-0.3113.0-macos-arm64.tar.gz"
      sha256 "22430f1a2eb4220ba285a8b3b6eb06adb89f89e8072501e3a225ba5b11a0b1af"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3113.0/lightdash-cli-0.3113.0-macos-x64.tar.gz"
      sha256 "b0090732ced4943a69afa35b2bb3f3edef6233889f4914355f89421faacfd748"
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
