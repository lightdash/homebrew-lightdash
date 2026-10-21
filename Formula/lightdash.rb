class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.18.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.18.1/lightdash-cli-3.18.1-macos-arm64.tar.gz"
      sha256 "1f556c4db37a1b8e2747e70d5bfba9c0c3e33436622ff95cc80244b36c285eaa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.18.1/lightdash-cli-3.18.1-macos-x64.tar.gz"
      sha256 "fb14f89b4b44a9a8043e4539c176fe86d1c3184224da4191cac6db668a168e1f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.18.1/lightdash-cli-3.18.1-linux-x64.tar.gz"
    sha256 "b338b9c97775d03355fccdc38edb11bbc6cce31753bd93622e197a78522160e5"

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
