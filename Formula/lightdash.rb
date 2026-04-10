class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2746.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2746.2/lightdash-cli-0.2746.2-macos-arm64.tar.gz"
      sha256 "8bced8c243d7d801778f7e017adceedda303fe0a0568ccc17a930e8866a8082a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2746.2/lightdash-cli-0.2746.2-macos-x64.tar.gz"
      sha256 "71a612f107b08634da38c6e066fa9853deb1c5d75c6525916e9a037c01bc19d7"
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
