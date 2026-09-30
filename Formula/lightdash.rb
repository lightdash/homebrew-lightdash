class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.389.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.389.4/lightdash-cli-2.389.4-macos-arm64.tar.gz"
      sha256 "2a66e2e95160cc86f4c9e154164437f0ec1878a36b028b102911ebf534584281"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.389.4/lightdash-cli-2.389.4-macos-x64.tar.gz"
      sha256 "040a73250da1392d5f753dc63a3ab023c12aeaf81f6dd90418f2fcf806117b64"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.389.4/lightdash-cli-2.389.4-linux-x64.tar.gz"
    sha256 "0b04ec1fb6f04df9eac6b22d270827abc209b71a1500b81c065db8c1c10d628b"

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
