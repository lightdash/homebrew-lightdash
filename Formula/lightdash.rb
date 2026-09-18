class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.269.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.269.0/lightdash-cli-2.269.0-macos-arm64.tar.gz"
      sha256 "f0e838d0b49eaf583ce8579f65ed16d2f61ffa60fa60fcf439aa6bc3f2f27ca1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.269.0/lightdash-cli-2.269.0-macos-x64.tar.gz"
      sha256 "d695ca454c31ef2354123a0664b1f054ed59af82d6edaf7dc4e58873c852c3e9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.269.0/lightdash-cli-2.269.0-linux-x64.tar.gz"
      sha256 "438a7fa44c59f39c439d8fc78b2854ad59350b01aeda5e09214bef54325e3b66"
    end
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
