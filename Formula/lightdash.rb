class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.346.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.346.0/lightdash-cli-3.346.0-macos-arm64.tar.gz"
      sha256 "a6e29736514025427200891d293ade67a059a772069b04ee7c1d41aae74a8756"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.346.0/lightdash-cli-3.346.0-macos-x64.tar.gz"
      sha256 "541927f3915fc2735aa2662201d571289745c4400ee81d50ad9d7de0dc9e3bd2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.346.0/lightdash-cli-3.346.0-linux-x64.tar.gz"
    sha256 "5d233a2f22ab1c092107bac7f8f50ae84488fa071a5b6363bcf921a4e7bfda9c"

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
