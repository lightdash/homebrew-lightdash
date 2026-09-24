class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.333.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.333.0/lightdash-cli-2.333.0-macos-arm64.tar.gz"
      sha256 "d0eebb953ee2a3c1435db203b6a87565b08e70dde6bd3686f4b349f05ebffb2b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.333.0/lightdash-cli-2.333.0-macos-x64.tar.gz"
      sha256 "d44cf6bf3e2346819b434aa0500afd78fe556034c3adc83e30b5664e37e48fc2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.333.0/lightdash-cli-2.333.0-linux-x64.tar.gz"
    sha256 "ccf2991ac3bccf7701fe5ac5ad452a990107353017d0825022403e11effc42f5"

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
