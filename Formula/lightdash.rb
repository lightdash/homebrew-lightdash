class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.329.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.329.2/lightdash-cli-2.329.2-macos-arm64.tar.gz"
      sha256 "49fe9d182fa690a030a5b168b8b7faf2a621025ccc38d2c69095b05726e4fdcf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.329.2/lightdash-cli-2.329.2-macos-x64.tar.gz"
      sha256 "947ae8697473a1bda2a0c3a70b7326caa04edd56e57d715813219858f2e93564"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.329.2/lightdash-cli-2.329.2-linux-x64.tar.gz"
    sha256 "b4188a2c918292db725ed087fee9c52460c4abc3483c51ad8f485980f6d37518"

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
