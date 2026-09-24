class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.325.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.325.0/lightdash-cli-2.325.0-macos-arm64.tar.gz"
      sha256 "b035dacd07f41356e0e6f02fe5eb7e50a5fafb92bb34945aafa0a7562248c577"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.325.0/lightdash-cli-2.325.0-macos-x64.tar.gz"
      sha256 "e7bebb028ccfa22b673a8ff70a07d8149323a6b7f94650a010572cf7d72de056"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.325.0/lightdash-cli-2.325.0-linux-x64.tar.gz"
    sha256 "d62640077e2a97605527903fc510cdbf45a15567c64cf1c94ea7c3f7c5ffd6f5"

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
