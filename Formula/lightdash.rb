class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.419.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.419.0/lightdash-cli-2.419.0-macos-arm64.tar.gz"
      sha256 "8821d0e03b0a18eef650904ee76f901fe19271eb9661677b4f26f110f111996e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.419.0/lightdash-cli-2.419.0-macos-x64.tar.gz"
      sha256 "6335ac1e25d211a01173439787f54ab3d86b8b44cf2bdb242b2fe8a9ef238316"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.419.0/lightdash-cli-2.419.0-linux-x64.tar.gz"
    sha256 "4003d6af126f338c2961e27c63bf61909fba4104e7675ace1357730afa741602"

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
