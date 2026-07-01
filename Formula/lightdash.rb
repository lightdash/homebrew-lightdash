class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3272.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3272.0/lightdash-cli-0.3272.0-macos-arm64.tar.gz"
      sha256 "bac08b6971ebbb64c3b0f46f601cf7d607a1d621411c2cb4a25d1321e4483f30"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3272.0/lightdash-cli-0.3272.0-macos-x64.tar.gz"
      sha256 "52001e9f706dc384e129e5d5ce6a06d88730b20e210e8204510c5e3437e38a49"
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
