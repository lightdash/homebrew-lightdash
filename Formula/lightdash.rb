class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2357.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2357.7/lightdash-cli-0.2357.7-macos-arm64.tar.gz"
      sha256 "01dbcd49e711df7d4fb41e2e0c3c642fcd013987ab55e3400cdd39b5f13f734c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2357.7/lightdash-cli-0.2357.7-macos-x64.tar.gz"
      sha256 "0cdc77d6f241cf84c12280c8aa5c876522781c04a0feafea6c86e013b851c05a"
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
