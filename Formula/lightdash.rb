class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.614.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.614.0/lightdash-cli-2.614.0-macos-arm64.tar.gz"
      sha256 "7a8a136cdddd878b7ad66baba3b4ffc327c640e10aa92e9df1a35c4ac018ec30"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.614.0/lightdash-cli-2.614.0-macos-x64.tar.gz"
      sha256 "dd5fefff1ba8fbebe46de8e6dad9145d387bc9eb583e13c28481ca5375a3a36a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.614.0/lightdash-cli-2.614.0-linux-x64.tar.gz"
    sha256 "51d6a6704240309b8587b1753f08a7fee4fa4080d85789a7f115c0ff0907d4b5"

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
