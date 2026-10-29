class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.102.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.102.0/lightdash-cli-3.102.0-macos-arm64.tar.gz"
      sha256 "6b3e4c1383c986710b4d23fa5a44f150c6c16c5dd6e4377eff27c4186eaee156"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.102.0/lightdash-cli-3.102.0-macos-x64.tar.gz"
      sha256 "3bb33d3bd965e50842ed27e80c1dc2cc1ed3921581513514b7c2ecf5589124a8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.102.0/lightdash-cli-3.102.0-linux-x64.tar.gz"
    sha256 "3e62544209c9910b3854915094418c506238b29de120b719f52dab70cc375758"

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
