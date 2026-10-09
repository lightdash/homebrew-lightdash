class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.501.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.501.0/lightdash-cli-2.501.0-macos-arm64.tar.gz"
      sha256 "b8454580e67ee7ec8a7bb0215ab4b448319133326c6c103ff894619e2a8a6f59"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.501.0/lightdash-cli-2.501.0-macos-x64.tar.gz"
      sha256 "646a362f2caf7a302178e0370a8d950bbe711b8166866ecb5fcbbed1c7ef202f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.501.0/lightdash-cli-2.501.0-linux-x64.tar.gz"
    sha256 "6f9056b18cd6114c3577833af60ee9358236633116efc5a19533c407bf31a866"

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
