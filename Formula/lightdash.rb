class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.172.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.172.0/lightdash-cli-3.172.0-macos-arm64.tar.gz"
      sha256 "b1080120746aa64532382ed5970e3d36638fb2346e59b18ccce430c7d30a1d7f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.172.0/lightdash-cli-3.172.0-macos-x64.tar.gz"
      sha256 "8f18ede4bf503a521d00762d6e88cf52949c2f91ba3bc557f7c6a747b80576bd"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.172.0/lightdash-cli-3.172.0-linux-x64.tar.gz"
    sha256 "3baa143422fe03ed8d264c638fe7c92da2cc3b187f426244c9cb9abe37b84e78"

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
