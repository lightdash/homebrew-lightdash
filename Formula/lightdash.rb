class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.460.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.460.1/lightdash-cli-2.460.1-macos-arm64.tar.gz"
      sha256 "7f37804c9fd794b9dbfc7ce91d3a49b36b00adbd4638d6ae9bc433bad8eaf26f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.460.1/lightdash-cli-2.460.1-macos-x64.tar.gz"
      sha256 "587071ddd59bb8bd2765affc126838c1173ee9c62cbfeb07202e20385e802333"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.460.1/lightdash-cli-2.460.1-linux-x64.tar.gz"
    sha256 "be15df513b1d3271257b7cfa73d9b39538311651032e21698f170ffeed778315"

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
