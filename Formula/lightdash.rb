class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.167.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.167.0/lightdash-cli-1.167.0-macos-arm64.tar.gz"
      sha256 "74b8fda2b313d44b58989a66854533c2bd79ec9beb385c8158c8a29c8eaf9e0e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.167.0/lightdash-cli-1.167.0-macos-x64.tar.gz"
      sha256 "6e051946d0bc1ae852ba124ee4edb4a0545a6bee53176019ee6a09c4212b6e22"
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
