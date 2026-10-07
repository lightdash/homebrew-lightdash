class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.458.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.458.2/lightdash-cli-2.458.2-macos-arm64.tar.gz"
      sha256 "0c3c6d8be809b0d7f9b8174828ee8146f825182351bee99f0f630a3b3b6026c4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.458.2/lightdash-cli-2.458.2-macos-x64.tar.gz"
      sha256 "f8e54ea841e0193c813bd219d734d1677ead772fe5d8018c0a0e522c4deea331"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.458.2/lightdash-cli-2.458.2-linux-x64.tar.gz"
    sha256 "d943988dfe39a5d66e10be657bd34153488e5dade75e5db63a96ff5f06d8b1ae"

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
