class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.128.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.128.4/lightdash-cli-3.128.4-macos-arm64.tar.gz"
      sha256 "2c1d314216006b41ca5d452e318fd1674f1bd126a72ea434d86465b710f32a29"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.128.4/lightdash-cli-3.128.4-macos-x64.tar.gz"
      sha256 "2c5c895c1b929763201d89354b9c0141db77bc26ea37cf7a3be5d999389ff346"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.128.4/lightdash-cli-3.128.4-linux-x64.tar.gz"
    sha256 "b1190ba7047c6614bc98c4f299dcd10a99a2756ab9134d42941bac4d3d513c14"

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
