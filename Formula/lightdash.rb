class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.601.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.601.0/lightdash-cli-2.601.0-macos-arm64.tar.gz"
      sha256 "42a8db70024a31a5893065bff23a6ba01affa34bfc76db21c03c0664268d0463"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.601.0/lightdash-cli-2.601.0-macos-x64.tar.gz"
      sha256 "83431ea8baaa1c598b2b8709f6dfe2b5d899351007ac15df806c0ad27be3a2c8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.601.0/lightdash-cli-2.601.0-linux-x64.tar.gz"
    sha256 "e32d6f40ff7ebff2ac30c12571cf96772056ebb048f4efd24db7cc6d05240905"

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
