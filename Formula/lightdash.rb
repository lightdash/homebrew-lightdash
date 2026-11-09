class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.183.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.183.0/lightdash-cli-3.183.0-macos-arm64.tar.gz"
      sha256 "a75a2ada8c9c53e44800c228f34f232d4d30f8cce9f633942ccc704cba874184"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.183.0/lightdash-cli-3.183.0-macos-x64.tar.gz"
      sha256 "58451a1c39fee95fd069ee7dc19d92155094f8f15b33f0913f44b685ffc047a2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.183.0/lightdash-cli-3.183.0-linux-x64.tar.gz"
    sha256 "88e9b72056377f33756bd0f52b22b53f67633c741c1eaefe1e82e501dcd661d3"

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
