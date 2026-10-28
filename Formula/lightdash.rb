class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.75.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.75.2/lightdash-cli-3.75.2-macos-arm64.tar.gz"
      sha256 "a88ac6772049a7dbfc249770599752ecc063ed5d7fdbc06eade5c38a361a44ea"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.75.2/lightdash-cli-3.75.2-macos-x64.tar.gz"
      sha256 "3e989fd412d01415845ffeccaacb261341f528aca2704ee544fae02529d68d42"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.75.2/lightdash-cli-3.75.2-linux-x64.tar.gz"
    sha256 "5d262ba44ab81f0e6b21c4233ffe017f4aa18ef010f79a42192e40426c51637f"

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
