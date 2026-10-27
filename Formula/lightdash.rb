class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.64.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.64.0/lightdash-cli-3.64.0-macos-arm64.tar.gz"
      sha256 "06a5c211ef9cebb54400ce147604efda56065d030c383fbd971c0e1882c2028a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.64.0/lightdash-cli-3.64.0-macos-x64.tar.gz"
      sha256 "e67eb1a50477fcba76d0173afa37ff8e7b1b6ceac3588678e14b472dec7e3bfa"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.64.0/lightdash-cli-3.64.0-linux-x64.tar.gz"
    sha256 "5e6b05a9c8d6aeb42fabd11aed85832026c8aee0c7367753814aa0a14debee9e"

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
