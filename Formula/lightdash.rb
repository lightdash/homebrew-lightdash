class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.579.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.579.0/lightdash-cli-2.579.0-macos-arm64.tar.gz"
      sha256 "5c0aebc9f223b267c9417cc8c589abbc9fbf8f443824b57355a63ab83b4cca54"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.579.0/lightdash-cli-2.579.0-macos-x64.tar.gz"
      sha256 "6a2688df3b2cc02b912f1c286ccf89210edbdb1e1983b14f4cc98e11ca9bef2c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.579.0/lightdash-cli-2.579.0-linux-x64.tar.gz"
    sha256 "57f1186d7283d80a2c54c4d0e2e533da5db4aa70d8add707c9cd248ec8f0bd1a"

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
