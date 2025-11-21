class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2198.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2198.4/lightdash-cli-0.2198.4-macos-arm64.tar.gz"
      sha256 "cf00a837fa8b4e36bd7280a1a48c86ff33725039845ea2ae0b006b65e0481a5b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2198.4/lightdash-cli-0.2198.4-macos-x64.tar.gz"
      sha256 "0f666e2f678600bba749252a5a47d73f03dde9be355491b25fa811ff52c3e02d"
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
