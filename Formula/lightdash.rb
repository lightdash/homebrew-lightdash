class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.425.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.425.0/lightdash-cli-3.425.0-macos-arm64.tar.gz"
      sha256 "c9727ce2f0a5eb68e26c98222f77db2e7fb84737cc456af561c46bc0d2d229b9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.425.0/lightdash-cli-3.425.0-macos-x64.tar.gz"
      sha256 "aa412657d96440da153e7e2a75813b2c6a343db72826520366331d034544c4aa"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.425.0/lightdash-cli-3.425.0-linux-x64.tar.gz"
    sha256 "588eca2c64fcabab0243ae42e5ee99fd74c42b6e627ab698653d14154f970626"

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
