class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.386.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.386.1/lightdash-cli-3.386.1-macos-arm64.tar.gz"
      sha256 "8dec548081b5f21a40816e34ddf4886ffb039d901bb60c60fc50e58617795989"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.386.1/lightdash-cli-3.386.1-macos-x64.tar.gz"
      sha256 "5ea832be8d57b50524cec29b4ba6d7a6cc7caf94f5ca33b796660332a9801762"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.386.1/lightdash-cli-3.386.1-linux-x64.tar.gz"
    sha256 "4757d8b474b0d90cea9a91a35086a163662523f1d82fae6823abf852cc96d1b8"

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
