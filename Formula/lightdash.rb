class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.423.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.423.0/lightdash-cli-2.423.0-macos-arm64.tar.gz"
      sha256 "cd1b37709fef7bcbe333ddeaa9ecbf7fa29a443f96738cec58672c5d753692d6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.423.0/lightdash-cli-2.423.0-macos-x64.tar.gz"
      sha256 "ef44a2ccb48124aebf2ff56478147ed44f44d0b74c6d5451933ffb8d20885e9a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.423.0/lightdash-cli-2.423.0-linux-x64.tar.gz"
    sha256 "b8abbc2c36c72a2b44937e2dc0255c7d58799c0c3aba82c08cadc43878221a05"

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
