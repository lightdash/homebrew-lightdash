class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.505.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.505.1/lightdash-cli-2.505.1-macos-arm64.tar.gz"
      sha256 "66781b5fd1f3f93f8bf0bd904712f0a0a2f77113d6af63ed8866bd371155fa1f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.505.1/lightdash-cli-2.505.1-macos-x64.tar.gz"
      sha256 "59b360535ab27b7ad6a6e3a94e97c83a0056195e28ed5aca221bdc571f2463b2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.505.1/lightdash-cli-2.505.1-linux-x64.tar.gz"
    sha256 "f32a4e21d06e0915e4c3bfb6c7d06762f948b8131b0f5dc437c5973155ae69d8"

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
