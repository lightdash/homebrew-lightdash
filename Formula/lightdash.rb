class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.605.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.605.4/lightdash-cli-2.605.4-macos-arm64.tar.gz"
      sha256 "d495833d482800f798fdda085618121f575e7748fa72f96ace69cd8e62e93a22"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.605.4/lightdash-cli-2.605.4-macos-x64.tar.gz"
      sha256 "44943426b2b37359185b39467b6dd0ace6c3a57efbcb82dc074b20a4dd179714"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.605.4/lightdash-cli-2.605.4-linux-x64.tar.gz"
    sha256 "9aec9b5958769244cd06ffe2a1baab9dda745412d95645bfd65d81761c27288e"

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
