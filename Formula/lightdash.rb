class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2240.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2240.5/lightdash-cli-0.2240.5-macos-arm64.tar.gz"
      sha256 "981c6a2043bd854c56a4b695ee208aabe7afaf48c52077fb79b6548d3945e5e8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2240.5/lightdash-cli-0.2240.5-macos-x64.tar.gz"
      sha256 "1bd6adbd9ed9190607119e7d176f4324efafc4b7414f32dc53d2aba91df4e044"
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
