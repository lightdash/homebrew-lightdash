class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.211.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.211.3/lightdash-cli-3.211.3-macos-arm64.tar.gz"
      sha256 "1d340916667a75654ce55f764f12e5a9229ebe592e5661609e1141dd51d05e84"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.211.3/lightdash-cli-3.211.3-macos-x64.tar.gz"
      sha256 "560136a5b237d9677d1adbf20851a94041f2d860c1a982b1066e637a606215f4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.211.3/lightdash-cli-3.211.3-linux-x64.tar.gz"
    sha256 "68e5ff8894a0845eb69a0ab587119f047edded002a44948be3dc2fbdf9398dd7"

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
