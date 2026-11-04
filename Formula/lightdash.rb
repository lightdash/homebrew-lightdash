class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.148.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.148.3/lightdash-cli-3.148.3-macos-arm64.tar.gz"
      sha256 "8fbe7158d9c764e209efc2bc8841129ee21241450b30cfb975cf474e5b420ded"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.148.3/lightdash-cli-3.148.3-macos-x64.tar.gz"
      sha256 "dbbaba6606003e6aad0882d5944d5f43eca34109a8de952a61caff19bae57d84"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.148.3/lightdash-cli-3.148.3-linux-x64.tar.gz"
    sha256 "402402ebe23bdec697ea39ef04dda7fd0ff585080d11896b7e32fe6e7f7961f4"

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
