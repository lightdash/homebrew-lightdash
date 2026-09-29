class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.371.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.371.0/lightdash-cli-2.371.0-macos-arm64.tar.gz"
      sha256 "572941020c636cc53f6d89462a299c2583cdf226b444648ad045a2f502e7046a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.371.0/lightdash-cli-2.371.0-macos-x64.tar.gz"
      sha256 "62745043f25d0b6722abc4a0fb540c196cc72551138aea72ad39682e2a34791d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.371.0/lightdash-cli-2.371.0-linux-x64.tar.gz"
    sha256 "d3a3df98e68357c3ab4d36749f020fc68a16c4b8ce8e8f8352cef02d9924cd57"

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
