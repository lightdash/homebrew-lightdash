class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.287.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.287.0/lightdash-cli-2.287.0-macos-arm64.tar.gz"
      sha256 "4e19d5d07f95813cca6dc2ae116d035aec22ec7d7e329aa7c997af3d07fb9da6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.287.0/lightdash-cli-2.287.0-macos-x64.tar.gz"
      sha256 "77378d4b4afe2a0fdd5e7d509d18a230b6830104819e6395865ab7ed061c7694"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.287.0/lightdash-cli-2.287.0-linux-x64.tar.gz"
    sha256 "2c76390180ed0512f4a249945baae372b926e0ca465b79c27098ce3954fb666f"

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
