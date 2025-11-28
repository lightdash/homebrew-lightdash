class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2210.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2210.0/lightdash-cli-0.2210.0-macos-arm64.tar.gz"
      sha256 "dca8bc8514340406586e20dce3ba4451ab1cd25463d1f99e8be1b37ea2dd1840"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2210.0/lightdash-cli-0.2210.0-macos-x64.tar.gz"
      sha256 "7565cac9b88f603bba177b56594c37d48e254531db910ae00623410d41a8b48d"
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
