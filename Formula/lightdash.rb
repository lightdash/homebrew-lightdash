class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3415.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3415.0/lightdash-cli-0.3415.0-macos-arm64.tar.gz"
      sha256 "1e00f50da2509cd29126d2119c1a4708606f0372cf28221b68fa0828aa5d9f0c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3415.0/lightdash-cli-0.3415.0-macos-x64.tar.gz"
      sha256 "159840429b213abfa5650b03a72a0cb4697e0d4d7a5449118012f120e0e4460d"
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
