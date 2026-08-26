class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.9.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.9.4/lightdash-cli-2.9.4-macos-arm64.tar.gz"
      sha256 "c3a3af1fa23c2ec5c0daaf1a521781290ace2a21427d3b87107708774f7bc7ca"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.9.4/lightdash-cli-2.9.4-macos-x64.tar.gz"
      sha256 "9a49a45080f3689f099f379714f99a7f957a7ef51417ec691942dfbfa72ffb2d"
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
