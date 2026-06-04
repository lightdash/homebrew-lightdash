class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3096.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3096.0/lightdash-cli-0.3096.0-macos-arm64.tar.gz"
      sha256 "145ffbb138d082e3d462013f62b25c937e0e9b13a6cd021f854057b32dfbb116"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3096.0/lightdash-cli-0.3096.0-macos-x64.tar.gz"
      sha256 "08e7eaec4e8609ba7fcc1ebe5c07c2728b77359ecf43c763266d1167516b732b"
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
