class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.202.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.202.0/lightdash-cli-3.202.0-macos-arm64.tar.gz"
      sha256 "157b71318b49fd57b90f03712a18952a5549314ff94a4a0bb8daef826ea22790"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.202.0/lightdash-cli-3.202.0-macos-x64.tar.gz"
      sha256 "91eb648011cefc4eb43ef69b68217dea5b6a311a4648a5f5bbc966efef3aaec6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.202.0/lightdash-cli-3.202.0-linux-x64.tar.gz"
    sha256 "9f63053e25af13abdf29de61ff84953c70d418e8fa10c03cc1c62f625fdb6ec6"

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
