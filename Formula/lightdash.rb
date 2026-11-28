class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.449.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.449.2/lightdash-cli-3.449.2-macos-arm64.tar.gz"
      sha256 "dd21c56aa15ca4b7aa3fa8424c43fbb762d55df3279ea93e4d19ed249b440810"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.449.2/lightdash-cli-3.449.2-macos-x64.tar.gz"
      sha256 "0b332ca591fb3ca4cd7df8305fe4cf5424e07174e31b6c83e27cbf2101cfd7ab"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.449.2/lightdash-cli-3.449.2-linux-x64.tar.gz"
    sha256 "84f8dbce9627526ee22221620aa16228603da6560ed673cb962faf5578f9d0d6"

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
