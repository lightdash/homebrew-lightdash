class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.276.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.276.0/lightdash-cli-2.276.0-macos-arm64.tar.gz"
      sha256 "76f22b367e57e0f285db8580f15978b1bc496885bcc1dbec52f0acc9c7479c7c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.276.0/lightdash-cli-2.276.0-macos-x64.tar.gz"
      sha256 "85741dee1b12bd9739826dd4d0beeb849df45e9b6f405aaf36f06f7f6ac63f8c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.276.0/lightdash-cli-2.276.0-linux-x64.tar.gz"
      sha256 "468c8ab779cd9a6b9de94db8992c5b6c14b1d3abb910651aebfaa47484c0da12"
    end
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
