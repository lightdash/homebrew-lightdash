class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.415.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.415.1/lightdash-cli-2.415.1-macos-arm64.tar.gz"
      sha256 "7a9b9201913a716a849adf60cc606c3712497dffc7c48c0f7724f2bddf976eac"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.415.1/lightdash-cli-2.415.1-macos-x64.tar.gz"
      sha256 "a6ff6a15fa2a59d33dccba535ea15d739db0e68049fab19a929c17ea20b6cc7b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.415.1/lightdash-cli-2.415.1-linux-x64.tar.gz"
    sha256 "4e0234dab1dedcf1b0d8e519c572ea76e28d27542e1d86af1954281bc590e8f5"

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
