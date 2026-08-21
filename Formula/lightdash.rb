class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.235.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.235.1/lightdash-cli-1.235.1-macos-arm64.tar.gz"
      sha256 "7753eb6a395bd1ed3d57e08c75c47d762b6b1f6f8f1b4b30afdb9a2b2214148a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.235.1/lightdash-cli-1.235.1-macos-x64.tar.gz"
      sha256 "ba54eaafa107f3957cdde8f09deaaac7939cc074c5aabb17f70472fddfe6deb5"
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
