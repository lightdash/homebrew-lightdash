class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.162.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.162.0/lightdash-cli-2.162.0-macos-arm64.tar.gz"
      sha256 "bca345477507904170de417b1a26eae819b8a6a176f3a334f348a8a8884c4d63"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.162.0/lightdash-cli-2.162.0-macos-x64.tar.gz"
      sha256 "841580afb162910a67cbad7e7d457d41ad63413a5f1a66a97f16a11cf73a1ecd"
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
