class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.17.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.17.1/lightdash-cli-2.17.1-macos-arm64.tar.gz"
      sha256 "6dbb57f02f425844f9e47d3e22c7115be23d162e3afc4dfea6f90d6d128d7142"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.17.1/lightdash-cli-2.17.1-macos-x64.tar.gz"
      sha256 "0b9e3848a2e6ff4387be31c381d0febbf1e199fff4f5be460d76862aaed850f5"
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
