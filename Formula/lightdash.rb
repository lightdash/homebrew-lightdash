class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3057.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3057.0/lightdash-cli-0.3057.0-macos-arm64.tar.gz"
      sha256 "1e65131b1d33cd8e2127e14b7a87991a4a0be8a30f9301fb8d9edf4662e413b5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3057.0/lightdash-cli-0.3057.0-macos-x64.tar.gz"
      sha256 "c37503a831e952955bdad7d2393ca09a63ab93f780646967a12ac4294981d909"
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
