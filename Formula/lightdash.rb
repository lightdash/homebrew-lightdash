class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.581.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.581.1/lightdash-cli-2.581.1-macos-arm64.tar.gz"
      sha256 "0ff9ae750a23fc6ce83249fe1d468cc8f65998032f5ca45c7667cdef17aed2bb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.581.1/lightdash-cli-2.581.1-macos-x64.tar.gz"
      sha256 "1766d482735d0ad5e5615ed7c02fe41ca3f66ca6c55a750ae17909b286393407"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.581.1/lightdash-cli-2.581.1-linux-x64.tar.gz"
    sha256 "17ab4ffadcf32fb5fb5260d278332a0ec7ef2cd0bf45aece113a0579f89cc296"

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
