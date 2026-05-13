class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2924.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2924.2/lightdash-cli-0.2924.2-macos-arm64.tar.gz"
      sha256 "57ebf5c88241ed2488612eda944ac4dc7d348aa67d1874b3b251c1f6f760f828"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2924.2/lightdash-cli-0.2924.2-macos-x64.tar.gz"
      sha256 "3b8698cbdefb268e05d127a042e8231552d954f5ee460cef07bcd929afdf582e"
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
