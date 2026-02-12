class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2457.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2457.3/lightdash-cli-0.2457.3-macos-arm64.tar.gz"
      sha256 "a3826fadea058373e38c6a33f3ff0bfca7108bd91f8e24805ed68c4a4cbc2652"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2457.3/lightdash-cli-0.2457.3-macos-x64.tar.gz"
      sha256 "959ca74f8c170df12c6cfecc462d33b2ab72daa83ed03f5d26cb40c577b1692c"
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
