class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2460.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2460.0/lightdash-cli-0.2460.0-macos-arm64.tar.gz"
      sha256 "7c966c2536ee6e5f50a2cc49c47588f0912a2a6a8baa530768aae5f0362f6b04"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2460.0/lightdash-cli-0.2460.0-macos-x64.tar.gz"
      sha256 "5c3b4368cb22bede9f146f1c80a3b7c199b1d5a2c5804f5af1a5ddca255a73b8"
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
