class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2438.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2438.0/lightdash-cli-0.2438.0-macos-arm64.tar.gz"
      sha256 "11296a89df816b5d0a6ef3187f2b412ea7f5c41acebad1078b3526eaa4a305d0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2438.0/lightdash-cli-0.2438.0-macos-x64.tar.gz"
      sha256 "5810785ecdf26bcae68799e4192a9c73ddc815f99d9dd137580835fa7027b4fd"
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
