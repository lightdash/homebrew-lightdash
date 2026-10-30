class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.110.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.110.0/lightdash-cli-3.110.0-macos-arm64.tar.gz"
      sha256 "6e9f6318996568a18d40fa65df1010293adba0aa1c907af123828c4bb4a02a40"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.110.0/lightdash-cli-3.110.0-macos-x64.tar.gz"
      sha256 "8f6988585c8275e774a1f0dd757894c1453c18dc6bb79b7ef56a8a0052b72789"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.110.0/lightdash-cli-3.110.0-linux-x64.tar.gz"
    sha256 "a5e2808234e73aa0573d88cff5900065bc9c0ea5d22527599804c3ad28c1d8b3"

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
