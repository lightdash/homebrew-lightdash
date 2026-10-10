class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.537.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.537.1/lightdash-cli-2.537.1-macos-arm64.tar.gz"
      sha256 "c95bbd1940aeada3fffcc67d130e4b084a006fa85bc1f1e9a9efc1a5f069a389"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.537.1/lightdash-cli-2.537.1-macos-x64.tar.gz"
      sha256 "6cb47902d8db7a955421afd4fac96b0302f106bbb7ce2d1ed9cf320bfee61fe8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.537.1/lightdash-cli-2.537.1-linux-x64.tar.gz"
    sha256 "e8be01edc34b71bba2ed487986e65d5ac9b56b200529cb0a18f65fc43b163943"

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
