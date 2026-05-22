class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3007.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3007.2/lightdash-cli-0.3007.2-macos-arm64.tar.gz"
      sha256 "1b851a15f53647a8765eb38de4d4812e92086ed73b7a87619bbd8581ffd2159d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3007.2/lightdash-cli-0.3007.2-macos-x64.tar.gz"
      sha256 "e238e49dde18fe838b2dcce20c0ed9b1a7861a8d5c19d8b154a719e988df6b3b"
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
