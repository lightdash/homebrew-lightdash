class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.622.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.622.1/lightdash-cli-2.622.1-macos-arm64.tar.gz"
      sha256 "95e5fd85643fb0f6835078aa6a271f6cc7124682404227ebea12b37d606383d6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.622.1/lightdash-cli-2.622.1-macos-x64.tar.gz"
      sha256 "e3f973aa1192d8d9817cbf2fb8ec16979c71c6f13ec3c0ff01b41ba58d6bf87b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.622.1/lightdash-cli-2.622.1-linux-x64.tar.gz"
    sha256 "bf5c5ec8afa93dd837c21befc087c4c7eb525de1b7441c6fe3202ffbd3a99f75"

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
