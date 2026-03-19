class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2639.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2639.0/lightdash-cli-0.2639.0-macos-arm64.tar.gz"
      sha256 "3c0fec25135ac157b4654e63f338794881dedae4a655cc628bbdb5fd39ec164d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2639.0/lightdash-cli-0.2639.0-macos-x64.tar.gz"
      sha256 "32414b133adeb9784006b203aa4211d548aa6e032176a9f7a0f3d7ffdf5a767e"
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
