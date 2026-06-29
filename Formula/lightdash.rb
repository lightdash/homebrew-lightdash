class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3258.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3258.2/lightdash-cli-0.3258.2-macos-arm64.tar.gz"
      sha256 "9c03205df56d0e6dfc22ce83492a8a3bd6e085e9c3fdf3098a2c5d1461764d5f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3258.2/lightdash-cli-0.3258.2-macos-x64.tar.gz"
      sha256 "ccb595b26cd14e289c579e0df204cddbb1d3b6439901d0689bc37c7914164c4f"
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
