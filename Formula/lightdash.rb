class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2984.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2984.3/lightdash-cli-0.2984.3-macos-arm64.tar.gz"
      sha256 "379cefd950bac8ca870ee40cdcadb198855f88b20425fc1d5e3ca3776d55976e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2984.3/lightdash-cli-0.2984.3-macos-x64.tar.gz"
      sha256 "e522bcb3cefb13b13b2751465c2f51135d9a9dde924615045df3d2456b510bea"
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
