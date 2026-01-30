class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2399.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2399.3/lightdash-cli-0.2399.3-macos-arm64.tar.gz"
      sha256 "de1f8c6bc68664173ceac79078966a299b4dd090ae1d6a47089e93c879810e35"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2399.3/lightdash-cli-0.2399.3-macos-x64.tar.gz"
      sha256 "f3e31d717a662bc5289aae8919afdac170a0e93783c4b2235a5ed5e26423e3f4"
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
