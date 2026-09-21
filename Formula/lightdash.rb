class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.272.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.272.2/lightdash-cli-2.272.2-macos-arm64.tar.gz"
      sha256 "026bbc387919a2fa18ae2c068baff9033dc4829701775acd353f25d49e9a90bf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.272.2/lightdash-cli-2.272.2-macos-x64.tar.gz"
      sha256 "8a6e51ac21eb653d22470984dd62adb3f1cae5f1ec61a6a2db8e7d2456ea09b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.272.2/lightdash-cli-2.272.2-linux-x64.tar.gz"
      sha256 "2e3df53e2ada4c7a23e2b83c45fd7596280804145f17102ff91aa41b38e090d3"
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
