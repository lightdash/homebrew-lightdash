class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3265.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3265.2/lightdash-cli-0.3265.2-macos-arm64.tar.gz"
      sha256 "4f553798fcd94f8da5d79a597e8bde0bf1898bfe5845942faed3dcf0595df3f3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3265.2/lightdash-cli-0.3265.2-macos-x64.tar.gz"
      sha256 "8e8db867764625558e78f0dd67ed3f5d5a5b8561b22a05d02490870639bae2d3"
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
