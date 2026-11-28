class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.447.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.447.0/lightdash-cli-3.447.0-macos-arm64.tar.gz"
      sha256 "82debbdd614bb9d2a7e14854c4255bbd1ed255d69a6e7d14c41143e9a1566896"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.447.0/lightdash-cli-3.447.0-macos-x64.tar.gz"
      sha256 "e7310efe7130e9e01d7bd826e5e4d4a5407ab7e6f89dbd434b595b3f9a78822b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.447.0/lightdash-cli-3.447.0-linux-x64.tar.gz"
    sha256 "51c01f8597d0ed95b82a8524b34f41fcc67673a712995e4b552c41cc6e74e8e9"

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
