class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.184.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.184.5/lightdash-cli-2.184.5-macos-arm64.tar.gz"
      sha256 "316f2bee343d519d62245289e5dc6fb1b3acb0988f05ec29e4dffc7263afa986"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.184.5/lightdash-cli-2.184.5-macos-x64.tar.gz"
      sha256 "bc8577a93c888948065bc6a6e5c01f40bcb8c7f5d46c3796fd48fcc749f1bdef"
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
