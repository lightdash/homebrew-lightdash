class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.592.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.592.1/lightdash-cli-2.592.1-macos-arm64.tar.gz"
      sha256 "3b184e398413e4b5ff8ed43157a4c34a66bb09376871280a9c0c27c339f21292"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.592.1/lightdash-cli-2.592.1-macos-x64.tar.gz"
      sha256 "535b44025f1fcd533ff164732bfbfc250b9540825162619bff92d39e3bca6893"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.592.1/lightdash-cli-2.592.1-linux-x64.tar.gz"
    sha256 "0745c616b884d185bb35a5b19b01a42c0ad637a4f247cbcb37956be43f189f69"

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
