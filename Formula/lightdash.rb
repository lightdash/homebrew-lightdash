class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.407.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.407.1/lightdash-cli-2.407.1-macos-arm64.tar.gz"
      sha256 "6b9a20e4c0cb382a97f7513f980a74f64c3026c7e4573073eecfa8b910b36de7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.407.1/lightdash-cli-2.407.1-macos-x64.tar.gz"
      sha256 "09c14d34318098662d3710a911f2e8a35ff551ef77b79744bd66613e2fc00c59"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.407.1/lightdash-cli-2.407.1-linux-x64.tar.gz"
    sha256 "334068b1f207371d1b477d7b1a9135c7ee8f41cdf069a83f2363299856ddb771"

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
