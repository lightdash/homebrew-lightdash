class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.309.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.309.0/lightdash-cli-3.309.0-macos-arm64.tar.gz"
      sha256 "050c74560735f683543d5d1e66778762eb96d6fc69272ba015b562d2e474dbab"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.309.0/lightdash-cli-3.309.0-macos-x64.tar.gz"
      sha256 "75d16327d1ed37c6fa70db179c3bcd5b1a1841d9739b527a593648648cb54783"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.309.0/lightdash-cli-3.309.0-linux-x64.tar.gz"
    sha256 "cd634ec0dbedda5eb53dc6c05060340c36331d5fc7b9a288a03a774c71f452d8"

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
