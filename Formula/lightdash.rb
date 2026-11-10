class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.194.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.194.1/lightdash-cli-3.194.1-macos-arm64.tar.gz"
      sha256 "52978d21c7e7a65fa2af0a3167e129844249dd6b09b2f761cfa2cddf5ca2e158"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.194.1/lightdash-cli-3.194.1-macos-x64.tar.gz"
      sha256 "d2b9a29a59a5244e826eb103551f0a3ebb9d86ede33f6b26b2142a9abe5fd7bd"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.194.1/lightdash-cli-3.194.1-linux-x64.tar.gz"
    sha256 "85784499d07fd05549933a71eea8a851d21af851167b10beb4ef808318c41388"

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
