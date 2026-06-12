class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3154.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3154.0/lightdash-cli-0.3154.0-macos-arm64.tar.gz"
      sha256 "76dc57468e918b9bc18ff906618ae91408a070114120c01dd5f2c3892967b446"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3154.0/lightdash-cli-0.3154.0-macos-x64.tar.gz"
      sha256 "a4ae98d7a384137f108553ed5bb3f0d4c8270ffbb3af2aee564916aede7127b2"
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
