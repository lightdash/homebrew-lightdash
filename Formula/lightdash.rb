class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2761.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2761.3/lightdash-cli-0.2761.3-macos-arm64.tar.gz"
      sha256 "d90c550f6d0dda58c6269b3950a8cf3a83b4aa1daa63a7046632a7e686f4f3b1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2761.3/lightdash-cli-0.2761.3-macos-x64.tar.gz"
      sha256 "52af73cf8605022ea628ce8999d078a068d1557e497e53f64d2a58687a4cd56f"
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
