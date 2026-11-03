class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.131.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.131.1/lightdash-cli-3.131.1-macos-arm64.tar.gz"
      sha256 "4b683f256d16f8443ac81318c6e82605eb7bdd19aafd246c19a1af6223578d97"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.131.1/lightdash-cli-3.131.1-macos-x64.tar.gz"
      sha256 "044dac0717476a9c2db3763ac299579577251ffa888556be630c470669820ac1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.131.1/lightdash-cli-3.131.1-linux-x64.tar.gz"
    sha256 "46de1cf61605b16452467f2b68763037819036c77d7a1ad6064e3c9c70da0b38"

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
