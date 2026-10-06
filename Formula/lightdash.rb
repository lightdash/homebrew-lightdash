class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.439.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.439.0/lightdash-cli-2.439.0-macos-arm64.tar.gz"
      sha256 "108cec5b48722736362a23539eb57976a05d0c29f81990b89767cca04465841a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.439.0/lightdash-cli-2.439.0-macos-x64.tar.gz"
      sha256 "e617316bd46f3f3598f16097a2e8e7569b669f68e001b52c8af5fff74934f636"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.439.0/lightdash-cli-2.439.0-linux-x64.tar.gz"
    sha256 "7415840f244e637854f845315d4de3d2f3ab7131de09d0810ddcefc1a8fed934"

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
