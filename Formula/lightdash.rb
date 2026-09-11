class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.198.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.198.5/lightdash-cli-2.198.5-macos-arm64.tar.gz"
      sha256 "0fbe17c5cc152f7c9e85252c8534dbeafc58e301043a77e6ed9e62c6a40fddf6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.198.5/lightdash-cli-2.198.5-macos-x64.tar.gz"
      sha256 "81a25688eedaba9624db5665f4952aa0e27ff8f37af274fb3de954d6596a56dd"
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
