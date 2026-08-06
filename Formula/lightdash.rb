class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.97.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.97.0/lightdash-cli-1.97.0-macos-arm64.tar.gz"
      sha256 "7dfc97acf85400600e72d58384b667e6f66634e9399784397aee523558489d09"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.97.0/lightdash-cli-1.97.0-macos-x64.tar.gz"
      sha256 "f09b52f2754536b5e423bccec2ca0a67de5a8b32f68b5e86f185eb9b0630bb49"
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
