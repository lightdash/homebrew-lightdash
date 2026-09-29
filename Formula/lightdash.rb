class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.375.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.375.0/lightdash-cli-2.375.0-macos-arm64.tar.gz"
      sha256 "50311e225b35349606bfe062eac11a46c337c15cee85fe28fbf601d23d35d278"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.375.0/lightdash-cli-2.375.0-macos-x64.tar.gz"
      sha256 "9968d3e04bf9130641d310dcf3e19d534c165a106900b821e27061e70d19a982"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.375.0/lightdash-cli-2.375.0-linux-x64.tar.gz"
    sha256 "e58b7a121627672ef19e11b27e989da39e48d876cb2d1c204830dc570f7e5bfb"

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
