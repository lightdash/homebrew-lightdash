class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.296.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.296.0/lightdash-cli-2.296.0-macos-arm64.tar.gz"
      sha256 "36dbeffd5c949ec9bc5a8d2b860aa058e233c3bcaf54a7c8c0951c845507175a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.296.0/lightdash-cli-2.296.0-macos-x64.tar.gz"
      sha256 "9c914009a5cfa0c822b685df670aeff10b5fe5e70317088d89ba377f16aff28a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.296.0/lightdash-cli-2.296.0-linux-x64.tar.gz"
    sha256 "bfca1ec95a6469978e7a818a25905c1d1c6ba6fc7a0ce3b499f54b3da2e0cb74"

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
