class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.30.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.30.1/lightdash-cli-3.30.1-macos-arm64.tar.gz"
      sha256 "ad9eb9e4dfd1db88e057d4d93dc26c73559f2fb8355913b9162ba72abb1cb5a7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.30.1/lightdash-cli-3.30.1-macos-x64.tar.gz"
      sha256 "8bc472c4a8c4bc22bd27782d96cf930c8776e3f66b7c574c457d5606ac8d3905"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.30.1/lightdash-cli-3.30.1-linux-x64.tar.gz"
    sha256 "9d6761be62923719957d1b31d2219aab3dc6ffe49de3b94961639d0323b281f6"

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
