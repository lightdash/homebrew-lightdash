class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2269.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2269.0/lightdash-cli-0.2269.0-macos-arm64.tar.gz"
      sha256 "5360290716c76a46757965f67236933495369c8d4bed41d2ace6526b0063fdc1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2269.0/lightdash-cli-0.2269.0-macos-x64.tar.gz"
      sha256 "c3091eb842153509a42ccafd8436960079b8e1ea352b70d58b8008be72f987da"
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
