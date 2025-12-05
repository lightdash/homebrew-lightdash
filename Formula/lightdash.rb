class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2231.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2231.1/lightdash-cli-0.2231.1-macos-arm64.tar.gz"
      sha256 "1e361289440f7140bfb0b0164a3abaceb79e6cf43cdeb7bd684551a7620b124e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2231.1/lightdash-cli-0.2231.1-macos-x64.tar.gz"
      sha256 "eb8078221178021d00ccdf1d2f47234e5f90d2eac7c58e06388e610909055a3f"
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
