class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.543.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.543.0/lightdash-cli-2.543.0-macos-arm64.tar.gz"
      sha256 "ddf9310ff4280980ce95de43aa80a60919733912dfa31ac10ad786baa233260e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.543.0/lightdash-cli-2.543.0-macos-x64.tar.gz"
      sha256 "7dacd1b17fc84d9996200e607f28a2d92a3e27735c1da8dcf54c17f8ee122ef9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.543.0/lightdash-cli-2.543.0-linux-x64.tar.gz"
    sha256 "4ee5744890d2280b7a9652dac8138b63705cd031f279ff3cba3cb96e86f99035"

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
