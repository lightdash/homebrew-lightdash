class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.362.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.362.0/lightdash-cli-2.362.0-macos-arm64.tar.gz"
      sha256 "42763ddddce64a0793d6af9ee11ae1c3013172cd054152fea1132c96fe612625"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.362.0/lightdash-cli-2.362.0-macos-x64.tar.gz"
      sha256 "bb07f43a958339c130fdf84daec16e08f8fd5f56e7087ab4f7c7d967c5427bab"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.362.0/lightdash-cli-2.362.0-linux-x64.tar.gz"
    sha256 "8b55645546f564b708612a6f404c113ad43030d761180f70f7e99d4dd3265905"

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
