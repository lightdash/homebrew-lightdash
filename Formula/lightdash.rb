class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.329.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.329.0/lightdash-cli-3.329.0-macos-arm64.tar.gz"
      sha256 "b0965380646535d94a6460846abf61bd14356b0761a35138db5ebea61fc5a97d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.329.0/lightdash-cli-3.329.0-macos-x64.tar.gz"
      sha256 "3fd896c0d91e558d25236e3539cbf0e00f0effb9a7a6b1de264a3bf5a54ee5df"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.329.0/lightdash-cli-3.329.0-linux-x64.tar.gz"
    sha256 "f190712ab8acf4296f69ab78eef0f835bc4ad80a9af8ebe46229e47e67aaaab3"

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
