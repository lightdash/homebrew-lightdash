class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.52.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.52.0/lightdash-cli-2.52.0-macos-arm64.tar.gz"
      sha256 "c055057eba7b1523735be0d5560ff4e61b079431c9b527038456647d18ed783a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.52.0/lightdash-cli-2.52.0-macos-x64.tar.gz"
      sha256 "e249c981f1669a7e9de59db2ae819e7951853138693facf9387856958b1ac75f"
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
