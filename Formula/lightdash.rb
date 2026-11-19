class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.330.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.330.0/lightdash-cli-3.330.0-macos-arm64.tar.gz"
      sha256 "9cc4240c17e917f82fdc91098cd2e01aa36d07b78052792eaf107af6fa5bf161"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.330.0/lightdash-cli-3.330.0-macos-x64.tar.gz"
      sha256 "d07a4604fdc4338b150d7c1e809103da7fac23d6fb1ab6972dd59653b6f6d472"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.330.0/lightdash-cli-3.330.0-linux-x64.tar.gz"
    sha256 "1890e1532591051f7d588d7b122e03500cdc183a4a11af4624ec8210b74d180f"

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
