class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3165.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3165.2/lightdash-cli-0.3165.2-macos-arm64.tar.gz"
      sha256 "28cf91bc38832312ed3370f0435bfc52ead8665e4cec4a81e507d53f9064a0cc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3165.2/lightdash-cli-0.3165.2-macos-x64.tar.gz"
      sha256 "d15b23fcdeda815cb9d96cd3ecd3f495d3a2c9be2d0ed0622e76f9d2f9f3a13c"
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
