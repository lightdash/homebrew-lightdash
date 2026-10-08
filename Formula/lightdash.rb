class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.473.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.473.0/lightdash-cli-2.473.0-macos-arm64.tar.gz"
      sha256 "45d12cc626658472d5ce2d580c0d4fde05e68a80b439ef34daafb2ac4658ceae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.473.0/lightdash-cli-2.473.0-macos-x64.tar.gz"
      sha256 "77f39ddfeabbd1f752ce6503a54d5ceac701a6cccd3970fe380dcf07d0ae2117"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.473.0/lightdash-cli-2.473.0-linux-x64.tar.gz"
    sha256 "f4c29e96e2ccc4e53f80d6f55bb0d51698e3a8267087918ea2c4f4b94214feca"

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
