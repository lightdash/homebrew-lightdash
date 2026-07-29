class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.33.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.33.0/lightdash-cli-1.33.0-macos-arm64.tar.gz"
      sha256 "095c2b49fe7955f043c6a2ad291434c10baff1bf284466c4b9f43073b1c1ae6c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.33.0/lightdash-cli-1.33.0-macos-x64.tar.gz"
      sha256 "107a55d6dc7ba2d38ec98a94be954308c522075548b5b96d625f2e486fe97637"
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
