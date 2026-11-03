class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.128.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.128.5/lightdash-cli-3.128.5-macos-arm64.tar.gz"
      sha256 "925ffee32d257501b9e4a636c250e5f7934bcc7e814bbbc7fed70e2a714bc903"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.128.5/lightdash-cli-3.128.5-macos-x64.tar.gz"
      sha256 "9db76c7a103bf87548605b0b7e837657a9bdb7ee84544145e85a3ed9f9fefe4d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.128.5/lightdash-cli-3.128.5-linux-x64.tar.gz"
    sha256 "33da839c9afda292dca16d8ff260ea9df05d1bf11a118c48b524307b4472c64d"

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
