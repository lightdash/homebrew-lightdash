class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.142.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.142.0/lightdash-cli-1.142.0-macos-arm64.tar.gz"
      sha256 "f3273091e0423593048d60cc808309746d4bec636a1ebe6b27040b1658035234"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.142.0/lightdash-cli-1.142.0-macos-x64.tar.gz"
      sha256 "c25579daaa71ff32590c7ec66a31ea206844879c39bc5311b1442d500195d2d3"
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
