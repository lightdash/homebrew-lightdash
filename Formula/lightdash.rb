class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.184.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.184.4/lightdash-cli-2.184.4-macos-arm64.tar.gz"
      sha256 "80dad4d7c18366d9311022c9f8aaf75c0faa9c9e2ea00b5406c3a4c0fe546c57"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.184.4/lightdash-cli-2.184.4-macos-x64.tar.gz"
      sha256 "d37305b0e86d563965d061f291c0066e2508e3b65ff9599575927cc59ae23adf"
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
