class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2706.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2706.0/lightdash-cli-0.2706.0-macos-arm64.tar.gz"
      sha256 "733986538267a26c4a824a485ea7e0c3dd60f3327cde651f64b81349f4993494"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2706.0/lightdash-cli-0.2706.0-macos-x64.tar.gz"
      sha256 "5877ba4af04c90b67dddf2f58b8186f7f962d3c7e7346d368053ea9de2dca31d"
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
