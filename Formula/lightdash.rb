class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.105.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.105.1/lightdash-cli-3.105.1-macos-arm64.tar.gz"
      sha256 "06acaaffb7842decb14f8d271b1ef5e547f6e12e411d7139f2bcb759a254c5ef"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.105.1/lightdash-cli-3.105.1-macos-x64.tar.gz"
      sha256 "2f0ac003c60c5d0543d717e3a770236603c09f058dd769df9cba578b30a4b6b8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.105.1/lightdash-cli-3.105.1-linux-x64.tar.gz"
    sha256 "02ec5428c697dfa095d6043e7ff8ad80f47d2bca3617a5e088ba8ce6ac989d95"

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
