class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2745.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2745.1/lightdash-cli-0.2745.1-macos-arm64.tar.gz"
      sha256 "c198bb7a2c59568fb2cdce9e69da19602bb60db1a09dfedbcbbd1934ee498400"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2745.1/lightdash-cli-0.2745.1-macos-x64.tar.gz"
      sha256 "43fa30961ed92d9466437ae596e926f3a9d9a86a0505cd8eb015b1a3d4c717cd"
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
