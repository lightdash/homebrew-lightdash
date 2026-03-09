class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2584.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2584.1/lightdash-cli-0.2584.1-macos-arm64.tar.gz"
      sha256 "deb7609e9df4af9417121cbc90356eaabdeacf6798d6819050fa3c34e5e0e8a2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2584.1/lightdash-cli-0.2584.1-macos-x64.tar.gz"
      sha256 "9c6b0d4582aac478ca38be8c3c92d8b047f633f5aff1dc470e9cca16135f2ced"
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
