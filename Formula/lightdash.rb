class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.386.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.386.1/lightdash-cli-2.386.1-macos-arm64.tar.gz"
      sha256 "b6037b854ff1f6fe5de289cb16f93f0ebf90f615d178d17f84d2806bef3a3cd1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.386.1/lightdash-cli-2.386.1-macos-x64.tar.gz"
      sha256 "b11e7dbd50aa02759accafd9b5a5b4715808aab37f619f4640fa1c22f2224b6f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.386.1/lightdash-cli-2.386.1-linux-x64.tar.gz"
    sha256 "6db702ec25538b566d1c3293339672073dba54060ba1805f275ebf81c72a8e1f"

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
