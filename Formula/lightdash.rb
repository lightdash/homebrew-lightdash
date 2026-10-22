class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.27.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.27.0/lightdash-cli-3.27.0-macos-arm64.tar.gz"
      sha256 "c3596e7c965a1ffe74327963ceb330aae050f0008f0f0761f91bd6ac234b20e6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.27.0/lightdash-cli-3.27.0-macos-x64.tar.gz"
      sha256 "5e1da65c0b740254b5eceecad91b8ae01dad0f02e7d350e208029ae09d94e4ad"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.27.0/lightdash-cli-3.27.0-linux-x64.tar.gz"
    sha256 "da2c112bd51a14ba527760a04b6e44d4ba23a20e7cb9de32bcb3a3aa14aecfb7"

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
