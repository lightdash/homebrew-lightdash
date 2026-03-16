class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2625.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2625.1/lightdash-cli-0.2625.1-macos-arm64.tar.gz"
      sha256 "efe9dedb21586cb0156f3174de5655f5430086304dc73a729af284d69456369c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2625.1/lightdash-cli-0.2625.1-macos-x64.tar.gz"
      sha256 "8c417bd41fd89538380c9209a16ea06bf4f20509f172b75b3ffbb4ad67542cbb"
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
