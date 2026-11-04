class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.148.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.148.0/lightdash-cli-3.148.0-macos-arm64.tar.gz"
      sha256 "69d3406aea7e597568ccc30fa1f3a2423681d61b511d0997acec1e0390848967"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.148.0/lightdash-cli-3.148.0-macos-x64.tar.gz"
      sha256 "f06e5244dc77469bfde8e299b8333f216e368ddcf9abe2dd46dd112acf76c718"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.148.0/lightdash-cli-3.148.0-linux-x64.tar.gz"
    sha256 "b8aed27d7a57808dddf1823a23c6df7cedf7debe91191e62117a83d27bc07b16"

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
