class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.559.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.559.1/lightdash-cli-2.559.1-macos-arm64.tar.gz"
      sha256 "9431f2ba3a5a964f00ec03bb94f1d5a0d9d229828bc1de6cf0458c9522bd923d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.559.1/lightdash-cli-2.559.1-macos-x64.tar.gz"
      sha256 "9c7dfdd536feac9e532e0816f4b3d178df248afc7d641c365b7251a47c7c71d6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.559.1/lightdash-cli-2.559.1-linux-x64.tar.gz"
    sha256 "cc2dc89662d817077323d0ee14530e79ee67140f0a576fe392228bb7d1da0473"

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
