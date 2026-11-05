class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.165.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.165.0/lightdash-cli-3.165.0-macos-arm64.tar.gz"
      sha256 "3cfa51d8a8bc86869cdf91cb2060e4e3349a51e4f02fe34bd70e071e1044a317"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.165.0/lightdash-cli-3.165.0-macos-x64.tar.gz"
      sha256 "0800ab2bcd90f813b3d76bc787a37046a476ddecc0123dc78b1d27f0d21b1bb9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.165.0/lightdash-cli-3.165.0-linux-x64.tar.gz"
    sha256 "3eee84293f6e5eb24e09119f595b33615ca8f52a74680564eef8b1763fa44e76"

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
