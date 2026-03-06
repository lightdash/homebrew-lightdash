class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2579.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2579.0/lightdash-cli-0.2579.0-macos-arm64.tar.gz"
      sha256 "52d57e6eee87350febc7c74380a94b5d541721f34323785abe2e728c6c4f7b1e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2579.0/lightdash-cli-0.2579.0-macos-x64.tar.gz"
      sha256 "1af5baf23fda2fc3d4beadc9f19353b55fa6a1e8ef23981c1efa5f70d018da05"
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
