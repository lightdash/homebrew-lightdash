class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2252.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2252.1/lightdash-cli-0.2252.1-macos-arm64.tar.gz"
      sha256 "372159edc3b6c64331338bfd06f95c5a63457ed8a284f9a250b6d7d17280b810"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2252.1/lightdash-cli-0.2252.1-macos-x64.tar.gz"
      sha256 "b1395d95134206288edf22886906a95e265f202e2756dfd16dfa44d85555691f"
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
