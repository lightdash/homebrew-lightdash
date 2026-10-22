class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.27.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.27.1/lightdash-cli-3.27.1-macos-arm64.tar.gz"
      sha256 "77c0fb0aa9eaf0319f79b06a40fd59efa8ff984425896062fbc323d8a8fc2eff"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.27.1/lightdash-cli-3.27.1-macos-x64.tar.gz"
      sha256 "1cce8d9d0b0774ebacf2caf49e9b48274fb70848273f07779c518a2dfa7f48b1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.27.1/lightdash-cli-3.27.1-linux-x64.tar.gz"
    sha256 "43d9484c52ff0dd99e673cc399ff6b30b8452c50c47ffa27f8230c05b1f15131"

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
