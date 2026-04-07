class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2729.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2729.0/lightdash-cli-0.2729.0-macos-arm64.tar.gz"
      sha256 "463d66225925b7d45e494777131d24ad314205b7fce1d3869bcd412b21686c67"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2729.0/lightdash-cli-0.2729.0-macos-x64.tar.gz"
      sha256 "52db0ac678f67d6282aa266933d1af19bf5422a9454b019429771f9a49c7084d"
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
