class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.394.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.394.0/lightdash-cli-3.394.0-macos-arm64.tar.gz"
      sha256 "e193e2afcfcc03cdcd6d0116539bbd44f799dc2af7d9bed640c12ffe26560029"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.394.0/lightdash-cli-3.394.0-macos-x64.tar.gz"
      sha256 "be71edb20e4dfd189f04a6ad85d3cb403b678bb0db153f8e0c73001707d9d043"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.394.0/lightdash-cli-3.394.0-linux-x64.tar.gz"
    sha256 "e7cc17baeeefceda37080fed03a3a5e1218fb3b2361339dd02353b45ea0cf7a0"

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
