class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2936.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2936.2/lightdash-cli-0.2936.2-macos-arm64.tar.gz"
      sha256 "00308b8d360cbb7f0761778bb8cd7bc68c9b6d071231995d9b388e616745e5e6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2936.2/lightdash-cli-0.2936.2-macos-x64.tar.gz"
      sha256 "bd8adbe10aacc8f97f848d2520588210a2a437b24b8b535d739fa4b6c4399eae"
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
