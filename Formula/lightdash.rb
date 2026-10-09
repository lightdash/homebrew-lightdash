class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.512.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.512.0/lightdash-cli-2.512.0-macos-arm64.tar.gz"
      sha256 "d4e8a5ee6cb40c99a3e50406f0340c193a68bdc63c07e906da1f3e858c890e57"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.512.0/lightdash-cli-2.512.0-macos-x64.tar.gz"
      sha256 "dc4955f4ac54ec7c4694e612c7d5fc28ac37d9e72821420d0c83fbdaff2035c4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.512.0/lightdash-cli-2.512.0-linux-x64.tar.gz"
    sha256 "a951bb732bf2137baacd23647602f2303d6f976a5a65d1fc613e4c43aa60d63b"

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
