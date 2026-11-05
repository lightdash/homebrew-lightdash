class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.164.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.164.0/lightdash-cli-3.164.0-macos-arm64.tar.gz"
      sha256 "e3265cf71788fef6aaca196b8bece625537c2e1df50912a613e9efc4e59f6b07"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.164.0/lightdash-cli-3.164.0-macos-x64.tar.gz"
      sha256 "6482c0ace96160497e3e5ef087e3f47f24f6bda00da86990944a01ee016b8467"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.164.0/lightdash-cli-3.164.0-linux-x64.tar.gz"
    sha256 "4eac3fa88b90683bc649f2b73fcf3e10e8447f1fbece6b6a4f58572e4de5118d"

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
