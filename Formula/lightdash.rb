class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.323.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.323.1/lightdash-cli-3.323.1-macos-arm64.tar.gz"
      sha256 "d16d741b140b39cf1c3cd1a20bcba775b8a27173f7c875aa1422652a2d9dd569"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.323.1/lightdash-cli-3.323.1-macos-x64.tar.gz"
      sha256 "f87ba1205972b57123d3dc75831351d1f396f3a82ba230918ae0eea0c109a0dd"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.323.1/lightdash-cli-3.323.1-linux-x64.tar.gz"
    sha256 "e9b8c291a64ece9d7b6273ee735802a2a6c95a3b061cbf0115505c951351e01f"

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
