class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.71.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.71.1/lightdash-cli-2.71.1-macos-arm64.tar.gz"
      sha256 "e3fe04e45c4698f0451d8bd25857870ea7c14cd66035dd5f1887951e99873255"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.71.1/lightdash-cli-2.71.1-macos-x64.tar.gz"
      sha256 "6b489842ce9c464dd352954f2456c616f0e24b6adad21d45583de63b62502e31"
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
