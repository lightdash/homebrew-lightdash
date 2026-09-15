class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.216.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.216.0/lightdash-cli-2.216.0-macos-arm64.tar.gz"
      sha256 "8aa84d8d25e2a5518aa674e5e6fe9ec8baba6ab5df4f8c469778f2d399ab3811"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.216.0/lightdash-cli-2.216.0-macos-x64.tar.gz"
      sha256 "d9d9fb44ef2be6e717b19107bcbe5f8c08b6ce104c195d8650863c05876f6d60"
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
