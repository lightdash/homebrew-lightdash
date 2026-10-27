class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.68.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.68.7/lightdash-cli-3.68.7-macos-arm64.tar.gz"
      sha256 "f154fc3b12ec56d61288b17137ec767228529361d9d759509978aa17c73068a6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.68.7/lightdash-cli-3.68.7-macos-x64.tar.gz"
      sha256 "af00adf40bfacd4b10c4376d96ef2df5a93f9ef4504311c4ba60b19b3182d1db"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.68.7/lightdash-cli-3.68.7-linux-x64.tar.gz"
    sha256 "73014fc5914d0df592008806f44821fe4728999ece7904f97cdabc3feaccde06"

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
