class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.420.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.420.3/lightdash-cli-3.420.3-macos-arm64.tar.gz"
      sha256 "466bc284659d9f2fef8e82d9693845128412cb0136a00fc0fd8a5d3dd02fd8a7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.420.3/lightdash-cli-3.420.3-macos-x64.tar.gz"
      sha256 "82ef7b4f6619f12dcfc4fbd64933fa87a6f94a97974565209b5d00f58e3afc53"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.420.3/lightdash-cli-3.420.3-linux-x64.tar.gz"
    sha256 "3a5189853e3f89df1d8de910aeba95a86942fe1127579a6c87b7f544dc4f384d"

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
