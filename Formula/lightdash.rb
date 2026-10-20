class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.629.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.629.2/lightdash-cli-2.629.2-macos-arm64.tar.gz"
      sha256 "e14314f83b4b7f30ea03575998694af7b755bb648938e871879e6530092b0b29"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.629.2/lightdash-cli-2.629.2-macos-x64.tar.gz"
      sha256 "c09050515acfe2ffdd3fae57c64a281234debdbc69cf38edce3d0c9fd9fbf665"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.629.2/lightdash-cli-2.629.2-linux-x64.tar.gz"
    sha256 "0a4977e7170f34db25df3f3d918d16ba97023336747a297353ba5cacaa5d69ae"

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
