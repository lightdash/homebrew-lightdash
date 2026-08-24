class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.251.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.251.2/lightdash-cli-1.251.2-macos-arm64.tar.gz"
      sha256 "fed6bb155ed85c110d712044cfbf4f7554c874a9f50be88e83739fdc4fd516f8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.251.2/lightdash-cli-1.251.2-macos-x64.tar.gz"
      sha256 "3863d4de1f6955175443d618937d7e4500fb0813951ab849e3ccde1f104fd4db"
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
