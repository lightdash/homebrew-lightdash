class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.12.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.12.3/lightdash-cli-3.12.3-macos-arm64.tar.gz"
      sha256 "5b094082f7e10f228ef6ea0918f2fd45ec81362b6586cc173f15f5dd9f4dfc0e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.12.3/lightdash-cli-3.12.3-macos-x64.tar.gz"
      sha256 "e9330be5d5ec7715a4636fcb5ae0bc1c32824e6323408d67f336d39c62ef2411"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.12.3/lightdash-cli-3.12.3-linux-x64.tar.gz"
    sha256 "e5f5b79c0872b21b96c94061b6fcf1cd989f7ff761fbb3acccd40daf9e332c5e"

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
