class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.104.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.104.1/lightdash-cli-3.104.1-macos-arm64.tar.gz"
      sha256 "88b9520389acf09f17dc00c0737654c596cb1938c43ac28d0ffad3f084d397e1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.104.1/lightdash-cli-3.104.1-macos-x64.tar.gz"
      sha256 "36d21260279a062b6457e9c8431b1e3c906ad4d5dac3d4e975c730305364469d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.104.1/lightdash-cli-3.104.1-linux-x64.tar.gz"
    sha256 "fbf5b7b627cf3c62fe484c2944d6e0f225ccb11cb7943127adb518c455909fde"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
