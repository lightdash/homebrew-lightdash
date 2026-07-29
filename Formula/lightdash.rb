class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.38.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.38.0/lightdash-cli-1.38.0-macos-arm64.tar.gz"
      sha256 "1fe990a536c84e359ec35ca0e924a168a722915fa1a9f05bb5c34d80e75c7cbf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.38.0/lightdash-cli-1.38.0-macos-x64.tar.gz"
      sha256 "3c31cea762b47d3f32f5430bfe6516135eaec6676bb4ab89c95876fca3258a77"
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
