class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.20.0/lightdash-cli-3.20.0-macos-arm64.tar.gz"
      sha256 "a423b91ef5a35849dbd8a8853b09aaada3017afc33697dd79696c4ae2da2cbb2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.20.0/lightdash-cli-3.20.0-macos-x64.tar.gz"
      sha256 "5a0e6abcedef581dad9182a9ed8e84a796cb6e37ed4f2334eb06bc5e32260624"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.20.0/lightdash-cli-3.20.0-linux-x64.tar.gz"
    sha256 "cf3760c98cdda5637dcffbf0424b8994d2a42e06015ea739dce903f4c9ec95e6"

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
