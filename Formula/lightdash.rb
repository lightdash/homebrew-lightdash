class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.428.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.428.3/lightdash-cli-2.428.3-macos-arm64.tar.gz"
      sha256 "1fe1dcf19e6974b142d8523b0744553b8d99bd9100b666424d9630b1786f31b8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.428.3/lightdash-cli-2.428.3-macos-x64.tar.gz"
      sha256 "ad4da04a3d3551e22e60904784a690dff805fa689b20fc979eea48c8a1b00520"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.428.3/lightdash-cli-2.428.3-linux-x64.tar.gz"
    sha256 "fe2b541050541f444cce410f7b9fb662ae95da1d5383692a764a9cedd32ea94b"

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
