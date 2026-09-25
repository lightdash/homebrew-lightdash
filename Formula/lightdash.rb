class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.344.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.344.5/lightdash-cli-2.344.5-macos-arm64.tar.gz"
      sha256 "8834ac0fa671bf79ae8d7d720bb3c5675fb2e626d315ce96346cc9c7ac54990b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.344.5/lightdash-cli-2.344.5-macos-x64.tar.gz"
      sha256 "93f7254114284a3b328ba43bd47b33e4d43a6fdd04541dd6cf037deb1d28778f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.344.5/lightdash-cli-2.344.5-linux-x64.tar.gz"
    sha256 "4d58155729d741acc203d6c62da290ce279fcb678939e8eb3e962f89e024c6db"

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
