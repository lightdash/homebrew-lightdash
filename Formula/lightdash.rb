class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.484.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.484.0/lightdash-cli-2.484.0-macos-arm64.tar.gz"
      sha256 "c660265c1b109ada03f749beb5c346f9d659bb603170a188964b1cc387fecc94"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.484.0/lightdash-cli-2.484.0-macos-x64.tar.gz"
      sha256 "d43bbe88cdf5bb5e69293771dc47e22ae6195b8d72ac04cb73504efd4530a7fc"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.484.0/lightdash-cli-2.484.0-linux-x64.tar.gz"
    sha256 "7a6d021824254df9ab87e849c3ad0f4050338c45935135a765c45ec798abb9bb"

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
