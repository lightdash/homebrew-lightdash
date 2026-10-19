class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.610.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.610.0/lightdash-cli-2.610.0-macos-arm64.tar.gz"
      sha256 "cdb23773d0553a5c5f032a678717c0b4ad9e2dd8d2ac69158f3c34da8234a625"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.610.0/lightdash-cli-2.610.0-macos-x64.tar.gz"
      sha256 "5e7f7502be654e04924f6a63f218bbade1a481efcbe80918d8c3a596808c36a6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.610.0/lightdash-cli-2.610.0-linux-x64.tar.gz"
    sha256 "77654d8b5a462eafd9009e8c928dd119a70b6da0334d2aa5ebb0e3a121b05392"

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
