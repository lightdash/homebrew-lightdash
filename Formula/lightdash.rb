class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.78.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.78.2/lightdash-cli-3.78.2-macos-arm64.tar.gz"
      sha256 "4e545aa892499e9e99cb005faf947878cb261a9680cb98a7bfc75d174217fd70"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.78.2/lightdash-cli-3.78.2-macos-x64.tar.gz"
      sha256 "57bbb732ff9b761937cc1d3ef4023328b7b3a3b85f3014542dd06466d9dd175e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.78.2/lightdash-cli-3.78.2-linux-x64.tar.gz"
    sha256 "47e4e588afef4503053d934e63f30df25ce92be468de5396d8b7227bf1647950"

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
