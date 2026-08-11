class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.131.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.131.0/lightdash-cli-1.131.0-macos-arm64.tar.gz"
      sha256 "a23afa09cb917cc123eaea1489f4317c0edd1b55c0cab157cc0ad4b03e42a80c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.131.0/lightdash-cli-1.131.0-macos-x64.tar.gz"
      sha256 "c642d4b2e4ff89e0d0612ce6100e2cfb51665e4c26bad3068f99eda8582547af"
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
