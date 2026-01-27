class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2380.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2380.1/lightdash-cli-0.2380.1-macos-arm64.tar.gz"
      sha256 "edf1e8d401a103faf784c54c5b250b480e7b3aa81f687d66282c543409b7c8a1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2380.1/lightdash-cli-0.2380.1-macos-x64.tar.gz"
      sha256 "7bfa7948a23a52a89ebc7bb326aa481b9199a3459a182ff99aeb69c9a2d27c36"
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
