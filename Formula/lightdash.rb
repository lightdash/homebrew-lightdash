class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.163.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.163.0/lightdash-cli-1.163.0-macos-arm64.tar.gz"
      sha256 "24c85be44922c511912eeb71a7bc932c048874f73ef66c563c1d982db8c3515e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.163.0/lightdash-cli-1.163.0-macos-x64.tar.gz"
      sha256 "7814626d96ef7ca6a549ff2900ea8f65fe97a566e1566a602bfaa6f0209bd63b"
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
