class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.573.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.573.4/lightdash-cli-2.573.4-macos-arm64.tar.gz"
      sha256 "7a90c065d8bd29cec474215b2cec95b580ffd83b7211fe8240b6ae5fe9a723b9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.573.4/lightdash-cli-2.573.4-macos-x64.tar.gz"
      sha256 "3fe27d0e268e313858eabf8a4d3f832bc28f3208caa80472e1ef1d56f82d7300"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.573.4/lightdash-cli-2.573.4-linux-x64.tar.gz"
    sha256 "dd5af3f216dd14744236a9873f1c4bc6dec2cb1071ba9e135a3ed555d5742bca"

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
