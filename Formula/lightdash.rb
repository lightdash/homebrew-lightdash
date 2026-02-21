class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2503.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2503.1/lightdash-cli-0.2503.1-macos-arm64.tar.gz"
      sha256 "a15316cdb24bc3a938433f260425467b3f6e2a5d81ab0c6f704772cc45083403"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2503.1/lightdash-cli-0.2503.1-macos-x64.tar.gz"
      sha256 "71f95155628e5709e8fb40fc5332114ceee01bd5cd7f5a26f3cd3983db535c2d"
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
