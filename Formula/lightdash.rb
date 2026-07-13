class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3368.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3368.0/lightdash-cli-0.3368.0-macos-arm64.tar.gz"
      sha256 "07a8f61f09f1e040ffd71817b6092602056f0a786cc53c85f5bf3e6a117c0f3b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3368.0/lightdash-cli-0.3368.0-macos-x64.tar.gz"
      sha256 "f992442a43804682fa4c322e9983097779ff0f7860625390b49da25b8b08cdcb"
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
