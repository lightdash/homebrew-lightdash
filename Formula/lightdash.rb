class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.374.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.374.1/lightdash-cli-3.374.1-macos-arm64.tar.gz"
      sha256 "3a6c87716bb95775196bf1f97d728788ec721992d91e9713a63059fedf34ed6a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.374.1/lightdash-cli-3.374.1-macos-x64.tar.gz"
      sha256 "80a4b57117f881e5ecd49d411eed9a82471ffa7f5bee9574dc551db255c3e311"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.374.1/lightdash-cli-3.374.1-linux-x64.tar.gz"
    sha256 "38ce2aa54fc18fe2a3937c636a75974a55ff17c2754d287fb1c15023162a1ab6"

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
