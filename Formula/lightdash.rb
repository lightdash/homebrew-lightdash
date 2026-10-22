class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.31.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.31.1/lightdash-cli-3.31.1-macos-arm64.tar.gz"
      sha256 "e4166b60370a9c12c44cffcecbbb546c46ba5d31bfc53000e6102e4f68f1d36d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.31.1/lightdash-cli-3.31.1-macos-x64.tar.gz"
      sha256 "f0bd2365429ab3ca88fd1131e7e8d907d1dbd7edbb4c55e84b909a9050fec308"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.31.1/lightdash-cli-3.31.1-linux-x64.tar.gz"
    sha256 "0f1f7bc8247f166cba7f85ef63df464670ae07de77f04ba2720eb17ab2d14c7f"

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
