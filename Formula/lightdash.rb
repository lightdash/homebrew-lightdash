class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2732.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2732.0/lightdash-cli-0.2732.0-macos-arm64.tar.gz"
      sha256 "485f2d2600ecb85741ce7bad61e38089b51bec28f712d77df1026d0601ae7dea"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2732.0/lightdash-cli-0.2732.0-macos-x64.tar.gz"
      sha256 "6442980f33377ce26899609bc2d8c4175612570c83e2169d8f901806ff620227"
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
