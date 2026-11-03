class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.139.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.139.0/lightdash-cli-3.139.0-macos-arm64.tar.gz"
      sha256 "0417f46a4417795fff25ed58da2128220f90d9754c8a614e054438a700bd5096"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.139.0/lightdash-cli-3.139.0-macos-x64.tar.gz"
      sha256 "7fc81ff7923647416c2815071e4655a783b18543d690eaa9294ae2575affaea1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.139.0/lightdash-cli-3.139.0-linux-x64.tar.gz"
    sha256 "1133f75020516ff3901936430d2324855fb68c29342794dc005af04e544e5f55"

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
