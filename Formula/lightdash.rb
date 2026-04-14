class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2759.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2759.1/lightdash-cli-0.2759.1-macos-arm64.tar.gz"
      sha256 "3467eec21ced0a83b4b1054e4cfa7221666bf4c0c86f002f7f680103993cd728"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2759.1/lightdash-cli-0.2759.1-macos-x64.tar.gz"
      sha256 "9323d1c135139d9630d10b8a8401d3a8d6a189a4eec2ef34f5a15a221409ae4b"
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
