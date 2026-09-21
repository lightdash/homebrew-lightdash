class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.286.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.7/lightdash-cli-2.286.7-macos-arm64.tar.gz"
      sha256 "4a16851d8a97749453a569949ac64056a3d6655c26be1ffb93506f7b43d82064"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.7/lightdash-cli-2.286.7-macos-x64.tar.gz"
      sha256 "94fff163bc201e2a41b0c4585de85084de3ea2f42e3e6467b4a220e404d5245a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.7/lightdash-cli-2.286.7-linux-x64.tar.gz"
      sha256 "00a06df13d7e9d9fa8218c3089afe7b4d12a5b19dc05f6a18b4e5b6df9f5724d"
    end
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
