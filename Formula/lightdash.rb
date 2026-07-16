class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3399.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3399.0/lightdash-cli-0.3399.0-macos-arm64.tar.gz"
      sha256 "9c35733357abc5af079ca08be306a8096f1b053e55a6865a56e7b299a4c1eaca"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3399.0/lightdash-cli-0.3399.0-macos-x64.tar.gz"
      sha256 "340f323f3c62185bf815462d5786fd5a873c61491c5a655a512f858cac7ae406"
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
