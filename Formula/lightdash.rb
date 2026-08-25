class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.257.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.257.0/lightdash-cli-1.257.0-macos-arm64.tar.gz"
      sha256 "2957e2a636cdf48d1997739b9ab7c1d25ae5783edb4579303faa3063555bc291"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.257.0/lightdash-cli-1.257.0-macos-x64.tar.gz"
      sha256 "1f610b4a0d414354d977484fac3f4530a18928267f370f1cb8cc34266c1a6b03"
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
