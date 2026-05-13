class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2932.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2932.0/lightdash-cli-0.2932.0-macos-arm64.tar.gz"
      sha256 "35b5c1c8f105e79701326925d79c01f7e613cc3e4b00a3df1cf0d7c5a27b7c70"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2932.0/lightdash-cli-0.2932.0-macos-x64.tar.gz"
      sha256 "b14ca3d04a9600dc8afda1d868ca513c2896aabc22c6206ea46205ec597368b8"
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
