class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.305.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.305.3/lightdash-cli-2.305.3-macos-arm64.tar.gz"
      sha256 "25c1fa09215722ebe5516c211bdf2e8007cbc0f28bbc0ad241685d560c972e93"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.305.3/lightdash-cli-2.305.3-macos-x64.tar.gz"
      sha256 "cb85be69dbd580dda4a9b8e3b00ca7a2b052049a1b5a08890bf69c236bb2f5c3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.305.3/lightdash-cli-2.305.3-linux-x64.tar.gz"
    sha256 "6dbaa5d10286f08a236a911b1538323e81a8dc9f886903acbcca78fd9cb976d7"

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
