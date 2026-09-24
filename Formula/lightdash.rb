class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.316.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.316.0/lightdash-cli-2.316.0-macos-arm64.tar.gz"
      sha256 "b73c1f9f10d673702480acb1dbf8f7e24cdca65e6707408de54a40cb4e2ff068"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.316.0/lightdash-cli-2.316.0-macos-x64.tar.gz"
      sha256 "5b17733605fdece04133dd7fd56d77a96d8b3c23a835ae170f23319f1313535e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.316.0/lightdash-cli-2.316.0-linux-x64.tar.gz"
    sha256 "248d5296a54e79f629fc9f4c726ca8218c6a3441598f83ed61b2e84cbd840bee"

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
