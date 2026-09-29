class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.364.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.364.0/lightdash-cli-2.364.0-macos-arm64.tar.gz"
      sha256 "cc33cbf8a26c2337e0346b132ca122c4de7ec4ee95a06b5cf98d73b61cf10e20"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.364.0/lightdash-cli-2.364.0-macos-x64.tar.gz"
      sha256 "c5548ebad0746c727a9d142e4649844b1a31257e29643d2dec41bc3674718192"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.364.0/lightdash-cli-2.364.0-linux-x64.tar.gz"
    sha256 "3de0a9c4e368e5c8f9afae9e844a48a869c43f6a4598faee05f4d26fc53708df"

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
