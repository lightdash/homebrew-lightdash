class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.519.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.519.0/lightdash-cli-2.519.0-macos-arm64.tar.gz"
      sha256 "f48fdcd6958caaa267f97003289b57104ce3003deb31c89173fad0fb72eeb82b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.519.0/lightdash-cli-2.519.0-macos-x64.tar.gz"
      sha256 "9cdb51c0d7f812337c020161745b9334c483b57b30915058bb3214b82c366223"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.519.0/lightdash-cli-2.519.0-linux-x64.tar.gz"
    sha256 "fdfd88cea375944b6806544e5a871f5894b4203a41b1d70b8b950c5654e75fb9"

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
