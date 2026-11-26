class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.412.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.412.0/lightdash-cli-3.412.0-macos-arm64.tar.gz"
      sha256 "1bafdf2f4180f3e8f746c9537da645c7b062a2dede73685923b0e7fc51c0e0e8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.412.0/lightdash-cli-3.412.0-macos-x64.tar.gz"
      sha256 "a6b45412fac40164a975ef9d882a9ed06408cb5b0e3a70a788285ebd0f5683e8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.412.0/lightdash-cli-3.412.0-linux-x64.tar.gz"
    sha256 "971adc49c275170034b01e222ede683a1730d64afd164c3a64d709e3ed17c27e"

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
