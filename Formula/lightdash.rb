class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.194.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.194.0/lightdash-cli-2.194.0-macos-arm64.tar.gz"
      sha256 "e72bc49d8f86a46462bbe17b7982bb48da85f1024b680c59e77a6d0c42a04096"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.194.0/lightdash-cli-2.194.0-macos-x64.tar.gz"
      sha256 "e8b43d1d5199022e6de601c8faaa9cba89fe0d4c4b468928f3f86dbe37b195d2"
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
