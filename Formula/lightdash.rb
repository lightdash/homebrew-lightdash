class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2234.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2234.1/lightdash-cli-0.2234.1-macos-arm64.tar.gz"
      sha256 "7d901adcde12299cd4544b1ce8096dbd601785532a9d651c2ab0c171606162e2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2234.1/lightdash-cli-0.2234.1-macos-x64.tar.gz"
      sha256 "892214a5e545034e3d7405e540bea03acf471832fa2a1e2d256a20204cbf4655"
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
