class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.0.0/lightdash-cli-1.0.0-macos-arm64.tar.gz"
      sha256 "30191ac34cd9e924bef1d9846bdebdc8c7dc61c9b514f353a0b9ec4e7d6b30e8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.0.0/lightdash-cli-1.0.0-macos-x64.tar.gz"
      sha256 "ca8e9a760f37ce3227d593ead822b668cd42f2e890d63a008fd3b502cfcd6079"
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
