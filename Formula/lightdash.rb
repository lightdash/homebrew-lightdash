class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2341.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2341.1/lightdash-cli-0.2341.1-macos-arm64.tar.gz"
      sha256 "639353df70714aa31ae5f8ac49467f72eefb5267f5820913f5cb0194e7371771"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2341.1/lightdash-cli-0.2341.1-macos-x64.tar.gz"
      sha256 "1be492093f6ccba3662682d1cdaaac23209c9bd68f9ba129ec4a006cd5396077"
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
