class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.599.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.599.2/lightdash-cli-2.599.2-macos-arm64.tar.gz"
      sha256 "9112d482d78bbb377feb44eb56159a3115df79808ea1ace8d4b225b40ba7c215"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.599.2/lightdash-cli-2.599.2-macos-x64.tar.gz"
      sha256 "7ebbeb029ce6fc1ffb5b32fb036759aa66418223cb401c12dbbb4373cd95e7dd"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.599.2/lightdash-cli-2.599.2-linux-x64.tar.gz"
    sha256 "eb703aa1bf8ef64051348eac53b0756825e8aa9023df344d35a694c55f00bd8b"

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
