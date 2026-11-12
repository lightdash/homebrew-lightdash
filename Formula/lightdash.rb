class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.232.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.232.0/lightdash-cli-3.232.0-macos-arm64.tar.gz"
      sha256 "a13feedb751065f59061aa915d7cf71a017bd0c1b4f54cb6bd50f593e239d6e3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.232.0/lightdash-cli-3.232.0-macos-x64.tar.gz"
      sha256 "aaf0d06fa013927289df8294eb759a134a2ee1dcf3c45b2d31f8830a9cf8182c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.232.0/lightdash-cli-3.232.0-linux-x64.tar.gz"
    sha256 "d48d8d66bfd1cabd829edf91f56b49379f73f21459bdfcdba9451e0a3100fe8a"

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
