class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3081.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3081.0/lightdash-cli-0.3081.0-macos-arm64.tar.gz"
      sha256 "30a17da9a30c9f0768a76c1c4d2400548bec670df17db608cf8c8c33935548ea"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3081.0/lightdash-cli-0.3081.0-macos-x64.tar.gz"
      sha256 "9742a413c49dc678a3909660ad90302a7c1b523b33abbacd0ecfb7424b23f3fe"
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
