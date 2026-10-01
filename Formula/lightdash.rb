class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.404.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.404.0/lightdash-cli-2.404.0-macos-arm64.tar.gz"
      sha256 "ef058bb019d66bf6a7e188d0cd33351388a73c1a4584c3ced4e9d389ab965fd4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.404.0/lightdash-cli-2.404.0-macos-x64.tar.gz"
      sha256 "a11b4384244a153e3bdf44a77ce504fe34858604a43555ac5e1ca984f0bf92ef"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.404.0/lightdash-cli-2.404.0-linux-x64.tar.gz"
    sha256 "646c6612d6e4c492c4e526b5b08d96ee6f41b35b85ac78ccd2d51dd2bfca4fc5"

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
