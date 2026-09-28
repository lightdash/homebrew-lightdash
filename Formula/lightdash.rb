class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.354.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.354.0/lightdash-cli-2.354.0-macos-arm64.tar.gz"
      sha256 "1d530f556063af5890dda8e1a19f04e5e945b0980ab6670f4bb7db83f7069edd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.354.0/lightdash-cli-2.354.0-macos-x64.tar.gz"
      sha256 "76a86fc2c85294a8bdfe24fefd0403f1518f0737b261b25407266f9757b5f19d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.354.0/lightdash-cli-2.354.0-linux-x64.tar.gz"
    sha256 "fd588125ebfb6201c6a61423fbf9451cbcd32c7c528b36a9e5a6356058fa2406"

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
