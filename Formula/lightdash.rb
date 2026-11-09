class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.179.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.179.4/lightdash-cli-3.179.4-macos-arm64.tar.gz"
      sha256 "5346ec3b3fb3510641181aac78fc1b8dfcad310c54dc4143eefd0d8bafdbbbea"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.179.4/lightdash-cli-3.179.4-macos-x64.tar.gz"
      sha256 "64d891f377b6ebd80b881e8418b4bbb267b7559cfc884a4143df5ea815046eae"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.179.4/lightdash-cli-3.179.4-linux-x64.tar.gz"
    sha256 "01e07ae61e3c5507d5dee4e5c29c04d3f82c544fdddef0bbbcc9bb07bc00f00c"

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
