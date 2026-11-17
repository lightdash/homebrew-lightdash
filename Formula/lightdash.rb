class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.288.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.288.0/lightdash-cli-3.288.0-macos-arm64.tar.gz"
      sha256 "0345ed39ce4efc9ae3e02d1cb2c6605c59c5f91363402b0bc05c8dff86226694"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.288.0/lightdash-cli-3.288.0-macos-x64.tar.gz"
      sha256 "8fbef8522d0be1bbf4c826a7e0331e8829dd24a76b7f22f9ae0840ebf060ff83"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.288.0/lightdash-cli-3.288.0-linux-x64.tar.gz"
    sha256 "638bd646f5042f981694361eef25b4e9f05686f778ae4237d623828b223a5820"

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
