class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.242.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.242.6/lightdash-cli-1.242.6-macos-arm64.tar.gz"
      sha256 "166817ffe6e15aa2bb480976464a3a7d2b429e6ae827e99896f21ba4016cbaa0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.242.6/lightdash-cli-1.242.6-macos-x64.tar.gz"
      sha256 "61df786a9f4ed7470d9d41819ec63a84e38280ac34de1e4f6f5acd685123ea08"
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
