class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.287.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.287.1/lightdash-cli-2.287.1-macos-arm64.tar.gz"
      sha256 "e71caf353afe1d679b8779ef3de4d2a35d65cd9789652b31b01393366d5fcf9c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.287.1/lightdash-cli-2.287.1-macos-x64.tar.gz"
      sha256 "5526b81673b698005529b2269ee3a7aa045a23c0b2274582e9fc4ae54506b20b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.287.1/lightdash-cli-2.287.1-linux-x64.tar.gz"
    sha256 "ce8efbbaf594fc34926c393c9ec76340f26de78d12d492b730060bf94e38b470"

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
