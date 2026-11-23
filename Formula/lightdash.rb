class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.371.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.371.3/lightdash-cli-3.371.3-macos-arm64.tar.gz"
      sha256 "8cf7aeeff4c4bb2889a9085ce62eaa231e6c919bd8f0b875d0ea6dc643e31d89"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.371.3/lightdash-cli-3.371.3-macos-x64.tar.gz"
      sha256 "d095baf7b479c18d24fe0648875f11ba647ab11602de430f0932a9be1e4bdd6d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.371.3/lightdash-cli-3.371.3-linux-x64.tar.gz"
    sha256 "295bf17e100d71f63b63d7763d40b37deeb0de5db7489040590c886344ac94c6"

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
