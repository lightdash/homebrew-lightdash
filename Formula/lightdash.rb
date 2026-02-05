class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2427.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2427.0/lightdash-cli-0.2427.0-macos-arm64.tar.gz"
      sha256 "fd75c7fda151b980348c66b7acee5f1b4680a97f054781ffcc4d5742088b2b55"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2427.0/lightdash-cli-0.2427.0-macos-x64.tar.gz"
      sha256 "ca7b169b06c1e87b998da6a015761803d9c3111f2621c2e59090daf6f8fbd759"
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
