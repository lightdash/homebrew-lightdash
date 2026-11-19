class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.337.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.337.0/lightdash-cli-3.337.0-macos-arm64.tar.gz"
      sha256 "4f691845b4d9ad773898f9dce7421992a0f132609c81d27d9330fbc9ce0fdb62"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.337.0/lightdash-cli-3.337.0-macos-x64.tar.gz"
      sha256 "c762bea719590b6fff52215393cb6f466d31ff9088af85cf963c59013e289006"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.337.0/lightdash-cli-3.337.0-linux-x64.tar.gz"
    sha256 "f4fb20328931eb3d9ee2d64e8056b2eb24ff55aa20f2fc7b54472cf6cd082d8e"

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
