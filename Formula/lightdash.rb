class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.306.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.306.0/lightdash-cli-2.306.0-macos-arm64.tar.gz"
      sha256 "03be4b9e3e2e42c9ded4358772d2e62dd883cdff5e0e1716cfbe6d817190fd5b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.306.0/lightdash-cli-2.306.0-macos-x64.tar.gz"
      sha256 "5df8727061ebe8d23955fac9403c40f8d2495ffcae31a34e2ed7fb000b2ed50a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.306.0/lightdash-cli-2.306.0-linux-x64.tar.gz"
    sha256 "6a78c600f7a80a832c54aa0007e6f48935f30a0ee77fc838909a0573f555dab1"

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
