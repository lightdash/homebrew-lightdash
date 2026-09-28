class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.359.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.359.0/lightdash-cli-2.359.0-macos-arm64.tar.gz"
      sha256 "df1e236f5ae65b14d68d8531e4b0f690098c3f5ee77b436643af9bf31731c0b0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.359.0/lightdash-cli-2.359.0-macos-x64.tar.gz"
      sha256 "2da9d975025d1c79ec579498f65edd73303a669ed4445285bf36ee41d6ef63d7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.359.0/lightdash-cli-2.359.0-linux-x64.tar.gz"
    sha256 "972828b2d5bc5e0178946a66f34398ff0dd59d1b8f77efca7cd295d4a7398608"

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
