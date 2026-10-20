class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.621.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.621.0/lightdash-cli-2.621.0-macos-arm64.tar.gz"
      sha256 "dfc7256671a9d8269b4a8b69454c829fdaa0297e142756945207117fd41d8f9f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.621.0/lightdash-cli-2.621.0-macos-x64.tar.gz"
      sha256 "ed6c1f0bc9f9b80267cbf6c89720a6bd85a1d19efc5e548bbbce91f56f29dd4d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.621.0/lightdash-cli-2.621.0-linux-x64.tar.gz"
    sha256 "db828ffe2b4299879907cb65d594bd556a9f43bcf3d2d9e62f79f79592854397"

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
