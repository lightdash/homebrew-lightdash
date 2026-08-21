class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.235.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.235.6/lightdash-cli-1.235.6-macos-arm64.tar.gz"
      sha256 "fc6c82c4a030b491e4ebb765d70f87e82d847c95749dc5073876749a7eb1bbb1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.235.6/lightdash-cli-1.235.6-macos-x64.tar.gz"
      sha256 "0e876708de89c5ab1cfea75bb120f7764244da7ae6712ac3db40c6cc67c2c01c"
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
