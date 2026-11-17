class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.289.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.289.0/lightdash-cli-3.289.0-macos-arm64.tar.gz"
      sha256 "973f65efb99f9ec69f0340b4f79c82a68d7b9a7874dc304ebe590918f09380a8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.289.0/lightdash-cli-3.289.0-macos-x64.tar.gz"
      sha256 "5317b3202b4cc5d2ea0df30928d68b2edde8f085226b0414e0ee59aa0374dbaa"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.289.0/lightdash-cli-3.289.0-linux-x64.tar.gz"
    sha256 "64f34adf7d636a2cb9abbcb69661f4844c2f4d0fc0eab8c29e8d25fa58dbb90e"

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
