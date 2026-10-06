class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.443.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.443.0/lightdash-cli-2.443.0-macos-arm64.tar.gz"
      sha256 "1da48b6e950ce6ad512e0b0275cf5d7d7408dd5576e313c02cf3c3814731bc90"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.443.0/lightdash-cli-2.443.0-macos-x64.tar.gz"
      sha256 "eda1ddfa3e41e1ce3680627b406f9004b51fbc5e3fea975d48d6af8963f84cbe"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.443.0/lightdash-cli-2.443.0-linux-x64.tar.gz"
    sha256 "1d039753715d2344782381db0e0595fe087fe353a3f9b44fb6c97391e86e00a0"

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
