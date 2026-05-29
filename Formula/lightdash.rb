class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3047.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3047.0/lightdash-cli-0.3047.0-macos-arm64.tar.gz"
      sha256 "c69d08fc6640388631e99476db72262e2be2453da1e64849873c804f5dc8c6d4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3047.0/lightdash-cli-0.3047.0-macos-x64.tar.gz"
      sha256 "d01c0a89b30229c50b53487f27f7a726cb29c405ae9a16ce6e23c371b63d6023"
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
