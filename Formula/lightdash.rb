class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.95.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.95.1/lightdash-cli-2.95.1-macos-arm64.tar.gz"
      sha256 "8fe4af73be1a6f42f351b2b268cf42ca6184238c53d37ca58670d1e64b88b2e0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.95.1/lightdash-cli-2.95.1-macos-x64.tar.gz"
      sha256 "aecd952e0e3a9e3d5d78de11fec40db5f7f7564c311996709d227058ba69734d"
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
