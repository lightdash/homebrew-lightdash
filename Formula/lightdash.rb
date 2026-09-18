class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.264.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.264.0/lightdash-cli-2.264.0-macos-arm64.tar.gz"
      sha256 "ae7aa69540bfd7b6b679322888c46920391ad00483a60066fdf3261db7e18637"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.264.0/lightdash-cli-2.264.0-macos-x64.tar.gz"
      sha256 "feb9b3ab6f896e0b7a7d57bdd29d7df382016d0da3da6d0a26eb8ca60e2a8fef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.264.0/lightdash-cli-2.264.0-linux-x64.tar.gz"
      sha256 "0982c46894e043c09177164479e7ed3929362a630153976703872824cfa04c04"
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
