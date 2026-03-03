class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2557.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2557.1/lightdash-cli-0.2557.1-macos-arm64.tar.gz"
      sha256 "c379dfbc0edc42f30e0a0cbe25f80ff729c26dcab747086c51997cd84b3d231b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2557.1/lightdash-cli-0.2557.1-macos-x64.tar.gz"
      sha256 "7a02102feb4bc28eef44200cc2fad2548d29cb20bc30fe7b3bffe7e4aa0710b4"
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
