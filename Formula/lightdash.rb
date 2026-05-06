class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2883.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2883.0/lightdash-cli-0.2883.0-macos-arm64.tar.gz"
      sha256 "785cc210222c49e740a51b30cfae181f9ba4604c32def1d3091186a04be8d53d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2883.0/lightdash-cli-0.2883.0-macos-x64.tar.gz"
      sha256 "03864be62b5e896c336eba5cda565cedb7f029652a9d236570d72b8c86075517"
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
