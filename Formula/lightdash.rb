class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.365.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.365.0/lightdash-cli-2.365.0-macos-arm64.tar.gz"
      sha256 "6e251306414261ceed64d9874770d41de597d989d4b0cc918d0b9a54d5fd6fdf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.365.0/lightdash-cli-2.365.0-macos-x64.tar.gz"
      sha256 "202803de6293be5acee30901488a0a8809a6d0508bc5fd1006fb2d83d9e42047"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.365.0/lightdash-cli-2.365.0-linux-x64.tar.gz"
    sha256 "59378e00c5d1f529cd3979f8e76dbde99b7ce971ea83f8a1a768fb4d507b61d4"

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
