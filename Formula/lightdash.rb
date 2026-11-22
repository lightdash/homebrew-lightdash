class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.366.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.366.0/lightdash-cli-3.366.0-macos-arm64.tar.gz"
      sha256 "622677e8d0655baef37df340330935ed7a3ee90823af2e6fcb1cb2e2e57ad38f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.366.0/lightdash-cli-3.366.0-macos-x64.tar.gz"
      sha256 "3312a19b9af3c26b764c8c7c998092a58c27f904d06b8b1cf8f6bf1d4b97292a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.366.0/lightdash-cli-3.366.0-linux-x64.tar.gz"
    sha256 "47126717d39f1ff8c8bf9b6cafee9453359376a6e9f5c51d0b7a25fe9a5afadb"

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
