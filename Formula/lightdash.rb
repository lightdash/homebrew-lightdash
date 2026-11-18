class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.316.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.316.0/lightdash-cli-3.316.0-macos-arm64.tar.gz"
      sha256 "c46edffc6b778ee66017e5afaf4fe5e909527f83d0786fb27fbd58ec7fb17f7d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.316.0/lightdash-cli-3.316.0-macos-x64.tar.gz"
      sha256 "d49cc34b449667fc440d52021968b6f987f2c82f4c75a977f6249feeced6eaa6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.316.0/lightdash-cli-3.316.0-linux-x64.tar.gz"
    sha256 "62ca13e7669b3662e0a2a5a3400308feefedbf114915d632c666b090e6ea4fa9"

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
