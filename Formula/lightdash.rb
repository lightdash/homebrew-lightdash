class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.149.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.149.2/lightdash-cli-2.149.2-macos-arm64.tar.gz"
      sha256 "f80b083ee80ae27bac2d75b198aa0c824c72b5054ad3618591a1084907a39150"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.149.2/lightdash-cli-2.149.2-macos-x64.tar.gz"
      sha256 "c59f3acf7d4c8dc2ba90c6c4428da468ea3fd8a5b9dcc5a8c0b3e334d2b56506"
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
