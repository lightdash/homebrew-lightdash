class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.310.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.310.0/lightdash-cli-3.310.0-macos-arm64.tar.gz"
      sha256 "6c928907e975fcfb79cf32a4215c0c3adaa1bbe3626058432b64dbc1c87b6efd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.310.0/lightdash-cli-3.310.0-macos-x64.tar.gz"
      sha256 "8acfb11c0d73678cd37b59bc4dd0ff7e672ced1d21cf44d99a28d7a076f7565a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.310.0/lightdash-cli-3.310.0-linux-x64.tar.gz"
    sha256 "312a3867d59246d743150c9ca383351c55f9426ebfa2940c0c4a440415c41e06"

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
