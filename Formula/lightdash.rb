class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.142.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.142.0/lightdash-cli-3.142.0-macos-arm64.tar.gz"
      sha256 "ad52625d5ecd6ec73bd573aec2527502441b63932f5802841d16685068ec8ad9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.142.0/lightdash-cli-3.142.0-macos-x64.tar.gz"
      sha256 "80217c30a2f6d5a01007074e39d4f8d00a0608e309e6f619a017aa71444fa390"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.142.0/lightdash-cli-3.142.0-linux-x64.tar.gz"
    sha256 "baf9d6735b9ea0f67d4462fd4ea8233bb5b049e4949cf5bd137ef71be61d2af6"

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
