class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.371.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.371.0/lightdash-cli-3.371.0-macos-arm64.tar.gz"
      sha256 "630c9acda1001f3fc19f7559682c77e0a4a285d7eb4367b14531ee8eaecbbcaa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.371.0/lightdash-cli-3.371.0-macos-x64.tar.gz"
      sha256 "a630f315636344b59eff9f767f8f91118ad156d208e7b1568dab54d017770781"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.371.0/lightdash-cli-3.371.0-linux-x64.tar.gz"
    sha256 "184737c98c35b880e5d729197dfa4b031ca757971c9f20cc67b22b9a4c73df94"

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
