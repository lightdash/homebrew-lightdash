class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.242.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.242.3/lightdash-cli-2.242.3-macos-arm64.tar.gz"
      sha256 "a57b210e650856c44cee1979ae1cebc75aaf011dce6ba30c55667dcc5b2d546d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.242.3/lightdash-cli-2.242.3-macos-x64.tar.gz"
      sha256 "6eea402ea7b00d6d1e027913128d9f489ca4b8441651f83289c85f22731d6439"
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
