class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2439.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2439.0/lightdash-cli-0.2439.0-macos-arm64.tar.gz"
      sha256 "652210735196e59bd6122bff08c99c567a74599cb2723e9c696effaa6c3f2a4f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2439.0/lightdash-cli-0.2439.0-macos-x64.tar.gz"
      sha256 "03c08c6894ea09bfb32d1823e585de6f9b408bd180adaaeed445f5e9038027e3"
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
