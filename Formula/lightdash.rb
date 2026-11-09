class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.179.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.179.1/lightdash-cli-3.179.1-macos-arm64.tar.gz"
      sha256 "9510620727b275bf06f6a95ecd296ced480443b73df6cfd8bc31542cf4d25529"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.179.1/lightdash-cli-3.179.1-macos-x64.tar.gz"
      sha256 "50eaedfd805944e10f2e5c080d253c475df2011e59aacc0679ed7cefe2d7f7cf"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.179.1/lightdash-cli-3.179.1-linux-x64.tar.gz"
    sha256 "1c1d0df18875e8aed1781c63f0544aca7a858cda154e62161e62141c03a1b1a4"

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
