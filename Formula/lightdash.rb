class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.41.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.41.1/lightdash-cli-3.41.1-macos-arm64.tar.gz"
      sha256 "6ced5bb4a4a508601bf141413ccfe4560ea7f004803577f6b5e9eddf7beaf84a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.41.1/lightdash-cli-3.41.1-macos-x64.tar.gz"
      sha256 "4d3ec4acd250b9b955126f45b82431698fff9c630ea94d2e7145a5f9986522b9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.41.1/lightdash-cli-3.41.1-linux-x64.tar.gz"
    sha256 "c3787bfcf63a7e41efd11f2ad95bb6e7f8cd37740da7c5fa56471deb912ec4f7"

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
