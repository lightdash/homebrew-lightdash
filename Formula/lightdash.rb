class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.82.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.82.2/lightdash-cli-2.82.2-macos-arm64.tar.gz"
      sha256 "8350b62c7cae5e1a1d7fe741aa364a12fa980004ec0bcae38313c327e63598f6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.82.2/lightdash-cli-2.82.2-macos-x64.tar.gz"
      sha256 "1e98cb3d21592aa620b4a994b7dcc1b3e161fb4a7fc66bea5faa6aea696b840f"
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
