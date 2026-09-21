class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.272.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.272.0/lightdash-cli-2.272.0-macos-arm64.tar.gz"
      sha256 "d1ad41b9e59b28d0ec1a33959f5ac027a7219788fe0bbb932408d4d7dd13c16e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.272.0/lightdash-cli-2.272.0-macos-x64.tar.gz"
      sha256 "7ce82854e84dbca1eb64cd9e545de774832c891a3381315cb1b5d53421c5d213"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.272.0/lightdash-cli-2.272.0-linux-x64.tar.gz"
      sha256 "ab27962229daa82f5fd3b11dc5ad0ce9b51a47d145f4a185851aaef8aabdc261"
    end
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
