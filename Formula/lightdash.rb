class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.605.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.605.3/lightdash-cli-2.605.3-macos-arm64.tar.gz"
      sha256 "26ce29a46b4eb7a3cb33309bdd3703286a400f88da27e175e3f880539781e759"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.605.3/lightdash-cli-2.605.3-macos-x64.tar.gz"
      sha256 "a1688c473df4a64c459bcab5e3744fa8eaf80833cee3890084e681b5147c4b15"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.605.3/lightdash-cli-2.605.3-linux-x64.tar.gz"
    sha256 "9897e3c09ec3faabb8664b1a47506c86947c24ebdf25266624e71335c0e2ea70"

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
