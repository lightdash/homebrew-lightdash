class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.616.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.616.0/lightdash-cli-2.616.0-macos-arm64.tar.gz"
      sha256 "ded35d1ce212d5b8a6d60aacf5c309cf70b1f541a25a2675470a752ed397855c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.616.0/lightdash-cli-2.616.0-macos-x64.tar.gz"
      sha256 "0b3e3ec54e38a262241eb9867044fa95050459a9fa7a9803886a382b7ea4c305"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.616.0/lightdash-cli-2.616.0-linux-x64.tar.gz"
    sha256 "0708f23116c0539d8c7e84f250a76cfc10601a662011df74c824494c85588b94"

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
