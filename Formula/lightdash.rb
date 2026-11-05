class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.154.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.154.1/lightdash-cli-3.154.1-macos-arm64.tar.gz"
      sha256 "91d3f91ea0907f642416b73d4fabf6f507035c7cdbc9cab0962dceae2317ae24"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.154.1/lightdash-cli-3.154.1-macos-x64.tar.gz"
      sha256 "6db98b2bad37a0319f140e17a6c9490d907534633315e0af2c35de5045a3e6ae"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.154.1/lightdash-cli-3.154.1-linux-x64.tar.gz"
    sha256 "0ccc44953b1bf7e16ffb19afef81a61b6e6faf58f8d4faab8c972d4c3319591f"

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
