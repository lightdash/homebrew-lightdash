class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.431.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.431.1/lightdash-cli-2.431.1-macos-arm64.tar.gz"
      sha256 "aeb50256a4e583b659f9eb11670c71ebebfd529ef297c8a7df9265bbe36256b7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.431.1/lightdash-cli-2.431.1-macos-x64.tar.gz"
      sha256 "c04529eed6c3490c579cbc87c378780fcd89096aa04d5fd4abe18fae6d8a2f94"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.431.1/lightdash-cli-2.431.1-linux-x64.tar.gz"
    sha256 "85ce1bb34dbf6d797035347ac4dda8b7b34a7f6c9aea30e1eac34de31583540b"

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
