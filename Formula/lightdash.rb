class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.93.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.93.6/lightdash-cli-3.93.6-macos-arm64.tar.gz"
      sha256 "6610fb9e442cf85c06de48d0727ed6679d06490ec5d091760d787ad038754f95"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.93.6/lightdash-cli-3.93.6-macos-x64.tar.gz"
      sha256 "f21b66263d98c612f54020a152ea0b5246da3b40519b26363e4b96ba267713bb"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.93.6/lightdash-cli-3.93.6-linux-x64.tar.gz"
    sha256 "a6226aa612250f23a4637b12bb0fe735cef9d2a2786006642a12dc22b6f9100a"

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
