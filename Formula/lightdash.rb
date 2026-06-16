class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3169.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3169.0/lightdash-cli-0.3169.0-macos-arm64.tar.gz"
      sha256 "afe4a64084ca66cc252aa9ad97fc123a1c68506ffbc28d762d16939539a7852a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3169.0/lightdash-cli-0.3169.0-macos-x64.tar.gz"
      sha256 "aac0a8b6b0e9b832405758e4a5e5ddc4ed552411e841dc874275a4703ce8fe7d"
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
