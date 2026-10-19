class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.616.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.616.1/lightdash-cli-2.616.1-macos-arm64.tar.gz"
      sha256 "dee565c0479b6150de46e40fdb2078fbbe971b05dec019f7b54c585d865986d1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.616.1/lightdash-cli-2.616.1-macos-x64.tar.gz"
      sha256 "21992e9af213d15448084f8b7b3ddab3d08b1fc0fd3f3ec6a5b37bd617df02b6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.616.1/lightdash-cli-2.616.1-linux-x64.tar.gz"
    sha256 "8de250f1024be800fb029f50628ecaee9300039915cc4764b2070c92e46c37e6"

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
