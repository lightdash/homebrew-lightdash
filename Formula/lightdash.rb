class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.93.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.93.4/lightdash-cli-3.93.4-macos-arm64.tar.gz"
      sha256 "58d060e054c340a04d1943efb36fe8f807c4693c6a5a447b0ab4e92dca4da1e1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.93.4/lightdash-cli-3.93.4-macos-x64.tar.gz"
      sha256 "35d7e93d6bd13d4d4012887eb1b15aad02879400ef9f2d849577ccda8e1c0895"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.93.4/lightdash-cli-3.93.4-linux-x64.tar.gz"
    sha256 "abf78d61255039d6fe1049bb285b62e1ae1d4243b3103488f68feae2602f14c6"

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
