class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.583.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.583.0/lightdash-cli-2.583.0-macos-arm64.tar.gz"
      sha256 "4c4b67d9c2c0baedb7fc72517430a6733f2148ee7922d538436d2edbb2cca5b6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.583.0/lightdash-cli-2.583.0-macos-x64.tar.gz"
      sha256 "df1e3084b659f4f3c2115a203052157505afd90ea1a7c119439b432ea300a983"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.583.0/lightdash-cli-2.583.0-linux-x64.tar.gz"
    sha256 "de2fc2b3220d66829b3c9dc8c33ecfabd094980b8055ca4854288019e1d4b83d"

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
