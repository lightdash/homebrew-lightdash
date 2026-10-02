class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.417.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.417.0/lightdash-cli-2.417.0-macos-arm64.tar.gz"
      sha256 "67d2a7caa5197cba64837e7e8416f6ba001a8e3b6ca9c246da800c9ddc52808a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.417.0/lightdash-cli-2.417.0-macos-x64.tar.gz"
      sha256 "77d6e8c9d7fbc8373b63bd58f9fc045e1f193efd8f71b25e1380de4b4344fa60"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.417.0/lightdash-cli-2.417.0-linux-x64.tar.gz"
    sha256 "d4d1b087d71ab78a52443277dd9b74de3cd134650273de826d067ecac0d84137"

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
