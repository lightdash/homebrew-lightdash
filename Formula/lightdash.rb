class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2464.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2464.0/lightdash-cli-0.2464.0-macos-arm64.tar.gz"
      sha256 "84b554b3066f86c7e030831f3224b998914aa04b54f21b1593ed8822c1e236aa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2464.0/lightdash-cli-0.2464.0-macos-x64.tar.gz"
      sha256 "bcb37316eb9ebf2459a79d8256a4d93598cca0dd1c72eaf80078b1d0952a955a"
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
