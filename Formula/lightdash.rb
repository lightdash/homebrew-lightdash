class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2493.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2493.0/lightdash-cli-0.2493.0-macos-arm64.tar.gz"
      sha256 "f7bceac15deb8cf6dcb717b3c156730755cefc2b52f01c0bea30f05eb8f48fb0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2493.0/lightdash-cli-0.2493.0-macos-x64.tar.gz"
      sha256 "1d87c0889fd637bf079667b538b2dc0c28eb5703624aece974e47ba41dd53db6"
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
