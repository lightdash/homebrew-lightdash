class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.337.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.337.3/lightdash-cli-2.337.3-macos-arm64.tar.gz"
      sha256 "71cfd346574c3cb943c01b45bbb97629481922a663e22c0af56de3e7c92f19da"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.337.3/lightdash-cli-2.337.3-macos-x64.tar.gz"
      sha256 "3118093e26bf369657c866d3839a1656327e9f0004bce2e20aefca51e72c1315"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.337.3/lightdash-cli-2.337.3-linux-x64.tar.gz"
    sha256 "92053cb765009f7d2441ccc9d294ba1f5de15727bcb31000a883da63bc009cbb"

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
