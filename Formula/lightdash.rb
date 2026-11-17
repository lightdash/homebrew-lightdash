class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.295.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.295.0/lightdash-cli-3.295.0-macos-arm64.tar.gz"
      sha256 "4cd13b129f9ae24f421270d16da23f6732dc7619f5308b089eb3faa5fc1e8a51"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.295.0/lightdash-cli-3.295.0-macos-x64.tar.gz"
      sha256 "d377f112f1379e64bd3ae41e242f74e4ab0854ed1099695405f4761d87e2f7b0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.295.0/lightdash-cli-3.295.0-linux-x64.tar.gz"
    sha256 "d70140278b4f0fc79806681bb2a0793b2715b3e238af134d63b6f1ee70090baf"

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
