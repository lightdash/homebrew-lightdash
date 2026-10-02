class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.416.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.416.0/lightdash-cli-2.416.0-macos-arm64.tar.gz"
      sha256 "b44489721400906f69c1a27d40a528276addc8a63e9342ced306401f0adcf967"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.416.0/lightdash-cli-2.416.0-macos-x64.tar.gz"
      sha256 "670c64afbab514312bec0b6c7fac33fc6ee7340d70894b35d176797841c044de"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.416.0/lightdash-cli-2.416.0-linux-x64.tar.gz"
    sha256 "579024255b2a9f8a98f37018aa3995471c2ceb4c2a9d5f66e0bfef07fd982083"

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
