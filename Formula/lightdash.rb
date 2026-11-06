class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.169.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.169.1/lightdash-cli-3.169.1-macos-arm64.tar.gz"
      sha256 "1d44ae2680d672228847f08fbb25c9f4cda97c5ce3fd13c3076ce9e010fe886f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.169.1/lightdash-cli-3.169.1-macos-x64.tar.gz"
      sha256 "a62a787718ec6ef46ad876a7db46a73c4bdcb50f3ae62b1ffae418f8f45130d3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.169.1/lightdash-cli-3.169.1-linux-x64.tar.gz"
    sha256 "d242d018e246eb5be5b41f48e1b19f8f21d0264ccd616210c1fbb4939825ed0a"

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
