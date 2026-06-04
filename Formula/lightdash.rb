class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3094.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3094.0/lightdash-cli-0.3094.0-macos-arm64.tar.gz"
      sha256 "83e40fc5064e2870a9907f616bf8ff13521ed333a27ba30f0ae25b11a9790e2f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3094.0/lightdash-cli-0.3094.0-macos-x64.tar.gz"
      sha256 "153b620f8141f64c97bc2163de911c382f509aeddde8984a9707a18d3612b021"
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
