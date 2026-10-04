class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.424.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.424.0/lightdash-cli-2.424.0-macos-arm64.tar.gz"
      sha256 "c4307a3dcfdee1c55972c701075f642b3c06a49a6ca812b071bfbb626cbcb599"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.424.0/lightdash-cli-2.424.0-macos-x64.tar.gz"
      sha256 "fba859be4603f8669e699cfbf80deec1b268f6c4345df9876c002ae561fe50cf"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.424.0/lightdash-cli-2.424.0-linux-x64.tar.gz"
    sha256 "269e5f606859ff6900bf4b05726a2c176cba9c57e697f3ef3c62df3aefec86b1"

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
