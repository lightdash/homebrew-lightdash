class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.310.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.310.1/lightdash-cli-3.310.1-macos-arm64.tar.gz"
      sha256 "7f4baeffc5b4bb120608b5485d30287a8c75d70a6a7bab86fcd742148105cdb8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.310.1/lightdash-cli-3.310.1-macos-x64.tar.gz"
      sha256 "27ecc26b84d1f89aab0ef159d2c43be70df9d01595ae80964501da8e4eae0984"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.310.1/lightdash-cli-3.310.1-linux-x64.tar.gz"
    sha256 "cde71722cfe6958347df0936a3314b445a0e62f8b294ee1c6e583711298923c5"

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
