class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2198.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2198.3/lightdash-cli-0.2198.3-macos-arm64.tar.gz"
      sha256 "72150c39b24f6cca68c78808597dc275a1bdc62416c6dc4aa8c770283cee35a6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2198.3/lightdash-cli-0.2198.3-macos-x64.tar.gz"
      sha256 "5b7a87bf2a66b0adfb0c01dcf146b3d84ba097772f4651566b4df5622ad8a4e1"
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
