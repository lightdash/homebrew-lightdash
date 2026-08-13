class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.147.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.147.0/lightdash-cli-1.147.0-macos-arm64.tar.gz"
      sha256 "77b21db7ac68156c3051d9b053078c126d1d257eeb792ae4bc861d4f92e21c00"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.147.0/lightdash-cli-1.147.0-macos-x64.tar.gz"
      sha256 "731e2d032265e5cd737802473bd77ea974f2083a391283fb03952bb1f3bf4e0f"
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
