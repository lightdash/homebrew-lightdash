class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.168.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.168.0/lightdash-cli-3.168.0-macos-arm64.tar.gz"
      sha256 "03796c5022f9c7355152d5928a8cd0187675f67cb6926805a8355e0ad8b9de6e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.168.0/lightdash-cli-3.168.0-macos-x64.tar.gz"
      sha256 "97fa4e6fab48e4de6bc59474f679f5b74d7ab69bdd3aedc734c5a5111c40cd94"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.168.0/lightdash-cli-3.168.0-linux-x64.tar.gz"
    sha256 "d2c897e01e395a3a856e02a841dbd03f5a4d93759d9ba893cc20531918ce7fed"

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
