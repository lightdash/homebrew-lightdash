class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.319.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.319.5/lightdash-cli-2.319.5-macos-arm64.tar.gz"
      sha256 "7cbee1858723edf97febbf35b8b6b35e37bfaa06ec293ed7aff0c1d138e76357"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.319.5/lightdash-cli-2.319.5-macos-x64.tar.gz"
      sha256 "ba4f70e8a9f1f21142b088cea94ffe1f852f021a3cc15ea5e7339158585d5427"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.319.5/lightdash-cli-2.319.5-linux-x64.tar.gz"
    sha256 "8d435ac24b63b489f123eb81b812c4d9c2d2ba3f2948d0144c1ad84395923577"

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
