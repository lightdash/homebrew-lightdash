class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.414.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.414.2/lightdash-cli-3.414.2-macos-arm64.tar.gz"
      sha256 "5c30bf8bd1181cf941cb42219a6c26e53c4dd108a53652c389ca9d820157a004"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.414.2/lightdash-cli-3.414.2-macos-x64.tar.gz"
      sha256 "2f69420a4f4b73e8b8ad794028375dd666f33d5a46d658a603e1581cd12f2bc2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.414.2/lightdash-cli-3.414.2-linux-x64.tar.gz"
    sha256 "7a55c9cf1feadcb62325a07a37aeb22f71be000b15643c82d576304a79bb0336"

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
