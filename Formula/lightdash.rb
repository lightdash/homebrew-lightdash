class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.506.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.506.0/lightdash-cli-2.506.0-macos-arm64.tar.gz"
      sha256 "dd8d7e91c3e0198370500e2f9bc092683af3a37113d28d256c586fe6964a1b5d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.506.0/lightdash-cli-2.506.0-macos-x64.tar.gz"
      sha256 "534134b79c2b58844fae9a8faf8d7184870e7cfe1ac59b906edbc9976e2fd8f1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.506.0/lightdash-cli-2.506.0-linux-x64.tar.gz"
    sha256 "f8f088e8c451eee4ab4d4ecdfeebd61a366422fc011e3992137e9e47ba8606ed"

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
