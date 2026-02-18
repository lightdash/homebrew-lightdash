class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2482.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2482.1/lightdash-cli-0.2482.1-macos-arm64.tar.gz"
      sha256 "ce7c2aa7b8cd7fe8f7a50e25bec804191f15516eb9bf4ad1941c173eb4d9d7b7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2482.1/lightdash-cli-0.2482.1-macos-x64.tar.gz"
      sha256 "8c05370726fdfefa7f9f9d3680cd3f9f6d8096caf8d07c3729f290945d135282"
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
