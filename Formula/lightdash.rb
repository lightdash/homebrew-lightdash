class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2365.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2365.2/lightdash-cli-0.2365.2-macos-arm64.tar.gz"
      sha256 "688e22c8048b4fba840e2b6d44bc437e4495e1592ab1d9157682f15edd38dbda"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2365.2/lightdash-cli-0.2365.2-macos-x64.tar.gz"
      sha256 "d4dc76b759c4a60b66795ecb8902164af5a773ae099b5f37d8ba98ffe6bfa179"
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
