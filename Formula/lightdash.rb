class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.361.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.361.0/lightdash-cli-3.361.0-macos-arm64.tar.gz"
      sha256 "884f6e213087973df9311f9061e029ccab0ca4117fc752ed06e6c84ba234c7be"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.361.0/lightdash-cli-3.361.0-macos-x64.tar.gz"
      sha256 "86cfa5df013b39695fd7aa97dcb65fd6a528a529e29cef1c5f13a64885b59415"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.361.0/lightdash-cli-3.361.0-linux-x64.tar.gz"
    sha256 "3f27c69efdb0196d6d3c00b0c073f0f4b0d95fb342487f69f01923dd93bd80b6"

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
