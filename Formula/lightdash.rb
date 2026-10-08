class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.475.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.475.2/lightdash-cli-2.475.2-macos-arm64.tar.gz"
      sha256 "50a438814c67ae5b8f78e0fb170c862a494a099f71a607e4d3b8834e9b065cf3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.475.2/lightdash-cli-2.475.2-macos-x64.tar.gz"
      sha256 "cf1d27097505511436dfc4c263806885b4d73acf6cda68e18487329f91017b69"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.475.2/lightdash-cli-2.475.2-linux-x64.tar.gz"
    sha256 "06db309c85db30e6b87d44b58825e376d9cf81e6db06ca102292ab7cd0b7b1e1"

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
