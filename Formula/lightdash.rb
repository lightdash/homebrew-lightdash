class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.593.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.593.0/lightdash-cli-2.593.0-macos-arm64.tar.gz"
      sha256 "50b3c5a4ea3270786addbf4fce353b31ee8dcb236fd6cf9a4c066af110b08e8c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.593.0/lightdash-cli-2.593.0-macos-x64.tar.gz"
      sha256 "a25bd707ee8e9999c6c5faf7e7d2bea57ad503afa9dc2a8dc4a44c5fd575deee"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.593.0/lightdash-cli-2.593.0-linux-x64.tar.gz"
    sha256 "f175d34342fae205627c3fe2461cbab4c1f5a7062ea20b594b60d1faabd6f902"

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
