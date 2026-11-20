class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.351.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.351.5/lightdash-cli-3.351.5-macos-arm64.tar.gz"
      sha256 "83549dd4fc8ec64dc9845847ddde2ef55cc3e7b9f9d02b37f578e4175525be1d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.351.5/lightdash-cli-3.351.5-macos-x64.tar.gz"
      sha256 "78ec44da040a98a3d1e8ba0bffa252ec0148438084717677e13e8b2cbfd021a1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.351.5/lightdash-cli-3.351.5-linux-x64.tar.gz"
    sha256 "eeadbb9cef357494558fa9d84a8d4f18e50585311a2a13e44440d1a4f5b7983a"

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
