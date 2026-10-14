class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.582.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.582.0/lightdash-cli-2.582.0-macos-arm64.tar.gz"
      sha256 "1dd3bfd53868ad996f0d6a03f5054cbd8fff8f17b7d2eb380dcd919ac5c654a3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.582.0/lightdash-cli-2.582.0-macos-x64.tar.gz"
      sha256 "0658d83a2624fd3219c83fcdc13d9663d1fe93e64e7a76a21eb9169bf0f42c6a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.582.0/lightdash-cli-2.582.0-linux-x64.tar.gz"
    sha256 "48ee02422279f83a30366b0264fe9e203f13c701878aac7b16db9351d202e7a3"

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
