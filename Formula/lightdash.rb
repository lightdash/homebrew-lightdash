class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.395.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.395.0/lightdash-cli-2.395.0-macos-arm64.tar.gz"
      sha256 "ebfe718be358a17c3477fba3670f72c9d371907c2718240bcf07c4e6816297f4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.395.0/lightdash-cli-2.395.0-macos-x64.tar.gz"
      sha256 "9674dc3d0d69ad00f4ac70a5c1f9bf7d389118e5f4a8b12b20a2e633d6d53d3e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.395.0/lightdash-cli-2.395.0-linux-x64.tar.gz"
    sha256 "8b05b51c07e1bd625415f734f19d98bdad51c9cf43eb030f0a9b649559a1ea52"

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
