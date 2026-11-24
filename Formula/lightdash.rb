class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.386.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.386.0/lightdash-cli-3.386.0-macos-arm64.tar.gz"
      sha256 "7d148aa3e20a1b7ca3cdbdd94c1bc2a63e07f475d4f60fc97c616e29748ace91"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.386.0/lightdash-cli-3.386.0-macos-x64.tar.gz"
      sha256 "5abbd9b8e908c3b06be6c750958ef73f062065ed7a1c537bbc313574222c36f5"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.386.0/lightdash-cli-3.386.0-linux-x64.tar.gz"
    sha256 "f4756da3913dbfebbe64da4c7208160f2af962d8c88931ec8734953c77412972"

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
