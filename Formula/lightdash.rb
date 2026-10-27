class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.65.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.65.2/lightdash-cli-3.65.2-macos-arm64.tar.gz"
      sha256 "b1df83a63b5cdc0d4f88cca4f0858faae7fdb75434e03f865df29c36942e80a7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.65.2/lightdash-cli-3.65.2-macos-x64.tar.gz"
      sha256 "cc95e9af551fc6b4bb48ab29d10ed7f295c60710e61d95b2b0a1025bb3f43bb1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.65.2/lightdash-cli-3.65.2-linux-x64.tar.gz"
    sha256 "3d2d22f15fe6670b7a1ccaf185a6fcb34de0845ac568d5a011d9a60417520934"

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
