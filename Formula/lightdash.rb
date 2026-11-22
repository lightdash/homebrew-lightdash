class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.364.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.364.0/lightdash-cli-3.364.0-macos-arm64.tar.gz"
      sha256 "db6cfabdaa9567ef6ad27e6ca2f4b82a57245beff3d58d84a6db533c430f1810"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.364.0/lightdash-cli-3.364.0-macos-x64.tar.gz"
      sha256 "4a74fc6c75a0933bb3d3df751f1fff24a49dc902b1d3f69bc1cbe285060020cf"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.364.0/lightdash-cli-3.364.0-linux-x64.tar.gz"
    sha256 "1b05521b0fbd950c0cf6c05cbeb8627e056a9d2445be3c47eaa0f29e3bbebae2"

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
