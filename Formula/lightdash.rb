class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2485.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2485.2/lightdash-cli-0.2485.2-macos-arm64.tar.gz"
      sha256 "55cbf69b6e2327118678487d475462eef74664c7a66436f9a6b31f18fe3f9ff8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2485.2/lightdash-cli-0.2485.2-macos-x64.tar.gz"
      sha256 "ff8c8ebbaab481287b75a7a6b41066aacb6014b263f8271031c5febe71eef1d9"
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
