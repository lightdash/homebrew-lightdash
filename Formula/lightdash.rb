class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.75.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.75.1/lightdash-cli-3.75.1-macos-arm64.tar.gz"
      sha256 "817c00986129013d7053379485173e378d9613cc71c0da547d39f271e85da6f1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.75.1/lightdash-cli-3.75.1-macos-x64.tar.gz"
      sha256 "251c3e91dc76190706ffcce6d9fdfb2c42aabb6341346ce864da2b847bb366b6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.75.1/lightdash-cli-3.75.1-linux-x64.tar.gz"
    sha256 "491a5a9972e1c73b27945b191314150912dbe317afa65623cb468b9c61009798"

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
