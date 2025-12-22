class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2269.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2269.3/lightdash-cli-0.2269.3-macos-arm64.tar.gz"
      sha256 "2df432a2538dac557ff6f7566b20e20264b19112ca89f825bd96ebd46ba7d701"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2269.3/lightdash-cli-0.2269.3-macos-x64.tar.gz"
      sha256 "639f649bd25693d254aef2b8f17d12a38fbb8bd605532d2537d119105e24e41b"
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
