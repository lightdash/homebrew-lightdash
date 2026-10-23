class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.49.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.49.1/lightdash-cli-3.49.1-macos-arm64.tar.gz"
      sha256 "8ecd6462be7bd25afdba144bf6d09403496d94f3cddf03019c3a524010612fd1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.49.1/lightdash-cli-3.49.1-macos-x64.tar.gz"
      sha256 "506464d9353f56b65fcaa9d42b389670084acad39ce9c285bf521efb781930d5"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.49.1/lightdash-cli-3.49.1-linux-x64.tar.gz"
    sha256 "fb5db9a6aa9a0b5d085df5dc4217055726221852cd2fcc4d5b4cad4680f2ac0a"

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
