class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.379.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.379.0/lightdash-cli-2.379.0-macos-arm64.tar.gz"
      sha256 "755862abaf2810d0f973869cf791ec765477277edc87b7b5bab1bfe7f4cdfaa2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.379.0/lightdash-cli-2.379.0-macos-x64.tar.gz"
      sha256 "76fe5d4fb27fbdbaf185f006e5dfd7d0af026c1a9a0d4dc507179e1d5ffe684a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.379.0/lightdash-cli-2.379.0-linux-x64.tar.gz"
    sha256 "a97bde2b9fc3f1bd97912e97c69e432de82d22de3b5a4ba6981f70d3729d788c"

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
