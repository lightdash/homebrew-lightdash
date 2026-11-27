class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.430.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.430.0/lightdash-cli-3.430.0-macos-arm64.tar.gz"
      sha256 "a827820a4ab2dc2f5478c9b8eb6129b836bf68146830647e390b3352e7423856"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.430.0/lightdash-cli-3.430.0-macos-x64.tar.gz"
      sha256 "5efdda3052f1b34610dc586e9533a7eb702f6f45acb83eac40ef2b3a177f53f2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.430.0/lightdash-cli-3.430.0-linux-x64.tar.gz"
    sha256 "41f9fbcfed6766026be6ba39b9e2f0bea0a6a6ed8211c104d20e9764b72d98bf"

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
