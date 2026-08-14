class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.155.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.155.0/lightdash-cli-1.155.0-macos-arm64.tar.gz"
      sha256 "83dada44d0219c006d91109d596eeed20700579a0e598bd4f0c822e989524a21"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.155.0/lightdash-cli-1.155.0-macos-x64.tar.gz"
      sha256 "be3a5696b3b947f7faf6bf15d0450c2960e181b1335ac28b7f1757eef1482369"
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
