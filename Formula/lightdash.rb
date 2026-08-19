class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.199.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.199.2/lightdash-cli-1.199.2-macos-arm64.tar.gz"
      sha256 "9f0d4ab89eeba8a810edf36d87f98a674f7359490e9397ec519d1f9125f41593"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.199.2/lightdash-cli-1.199.2-macos-x64.tar.gz"
      sha256 "bbf773e2b04e575a6848dce126974abfd8e3f0e632f52e2961a98f3ac3a76e14"
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
