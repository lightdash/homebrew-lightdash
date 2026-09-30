class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.383.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.383.1/lightdash-cli-2.383.1-macos-arm64.tar.gz"
      sha256 "acaa19d2c5cd05fa486c39cbbae463ef4cfe9bffe93cef91e1d39309d2b4d224"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.383.1/lightdash-cli-2.383.1-macos-x64.tar.gz"
      sha256 "776ebd03ddcf3cd70273f84817de0e6c86c44014ab5910295df793c647551733"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.383.1/lightdash-cli-2.383.1-linux-x64.tar.gz"
    sha256 "da35bc10f056663c48a9b5311154d22852b86279c8f51b16bd49aa7477946dd6"

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
