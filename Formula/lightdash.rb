class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2451.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2451.2/lightdash-cli-0.2451.2-macos-arm64.tar.gz"
      sha256 "58bae49f58949448dadc41d448d58f9d2b08e930474f6c03f63074fcc0b96f07"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2451.2/lightdash-cli-0.2451.2-macos-x64.tar.gz"
      sha256 "d12443e072374fa16276572c529b0d8fd854b56255e1bf02712781c8a87c754c"
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
