class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.477.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.477.0/lightdash-cli-2.477.0-macos-arm64.tar.gz"
      sha256 "a709a6e1f7bcc36fd655f2488bfdcb1a5a735e7d446edbebb7ba7e1927a527a1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.477.0/lightdash-cli-2.477.0-macos-x64.tar.gz"
      sha256 "83c1ffbbb4b3974595c38a5d96c6af4edfe03b0572f8ca8c6a121dafdfd14d2d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.477.0/lightdash-cli-2.477.0-linux-x64.tar.gz"
    sha256 "29ce0d55ec5000b2f4992b9c71af9c768ca800aaf228e7f374236b960e3671b4"

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
