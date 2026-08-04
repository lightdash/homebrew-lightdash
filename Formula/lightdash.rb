class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.74.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.74.0/lightdash-cli-1.74.0-macos-arm64.tar.gz"
      sha256 "7dad60f38477a737149bc4561d4b7a44437aa193fce247a43417db3d1a508feb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.74.0/lightdash-cli-1.74.0-macos-x64.tar.gz"
      sha256 "ab418434734eab3ea28e007fc416d3e6cc730983d3feebdb95a4f64a645bea00"
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
