class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.405.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.405.3/lightdash-cli-2.405.3-macos-arm64.tar.gz"
      sha256 "839c56fc5771717b083c59cba6fd202be2cfbea7b91da5328abd3aa57aaeed47"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.405.3/lightdash-cli-2.405.3-macos-x64.tar.gz"
      sha256 "b716d0b14bd072c1310f16ee709139217d90341518f57fc3122aef2da77d52ba"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.405.3/lightdash-cli-2.405.3-linux-x64.tar.gz"
    sha256 "14a359e2d38263a8c06d3e8e02fb5369c12277e2897325a819f08c5c3ede69f0"

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
