class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.352.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.352.6/lightdash-cli-2.352.6-macos-arm64.tar.gz"
      sha256 "95c27e14556f341a51f64fb7d0580e7b5e6a78dbe6819bb30c3de95647f4a34a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.352.6/lightdash-cli-2.352.6-macos-x64.tar.gz"
      sha256 "0f162b564e500ac4c40846232d87b181c6d5b39e4270936e402994e0a6e03f19"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.352.6/lightdash-cli-2.352.6-linux-x64.tar.gz"
    sha256 "3ae3f3e422495228397de34764914a2b571915fa3ad5426f2f93b9812d7c7aa0"

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
