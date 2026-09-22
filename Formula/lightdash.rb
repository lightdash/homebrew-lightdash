class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.293.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.293.0/lightdash-cli-2.293.0-macos-arm64.tar.gz"
      sha256 "3b7fb5f4ea0629b61c4a01607c44f612123fe6ee86e807dda5809f1e897fb15a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.293.0/lightdash-cli-2.293.0-macos-x64.tar.gz"
      sha256 "b6e4ad9a3938e163db8e3b9c757f31646c2ae710e08bb189b66a9c6c30760d82"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.293.0/lightdash-cli-2.293.0-linux-x64.tar.gz"
    sha256 "17075c27170dcc2889cc1747cb17f12674743bba85d6b07419f101e9c5aeac7a"

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
