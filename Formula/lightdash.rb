class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.34.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.34.1/lightdash-cli-2.34.1-macos-arm64.tar.gz"
      sha256 "c9ad412470166fe381c90d8905bc256352f0f955d813fedb8b04604e982d354b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.34.1/lightdash-cli-2.34.1-macos-x64.tar.gz"
      sha256 "43fe04b0a42f5160f33bf5d867f4981de7bf5db1097e8c9a1ab6b700438e89a5"
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
