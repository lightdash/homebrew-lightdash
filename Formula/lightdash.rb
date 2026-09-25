class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.337.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.337.2/lightdash-cli-2.337.2-macos-arm64.tar.gz"
      sha256 "937d249702d77c262f43662e8f780ddf2e15781e1c9e409bda4eb8284fc2e780"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.337.2/lightdash-cli-2.337.2-macos-x64.tar.gz"
      sha256 "32270da240bdb8c3fe5889e0db01ab6b81d8d1625b2cae15e358307e54505d0e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.337.2/lightdash-cli-2.337.2-linux-x64.tar.gz"
    sha256 "074f393ea7b9602e7fcb3db18eb607f9e2b022ff5beabf972c2b8ad0ef5ac714"

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
