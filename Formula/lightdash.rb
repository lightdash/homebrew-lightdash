class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.351.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.351.1/lightdash-cli-3.351.1-macos-arm64.tar.gz"
      sha256 "3b95e438cf039c537f8263c94dadfdddcade3884ff8c2e4de606d2e2f1113e6e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.351.1/lightdash-cli-3.351.1-macos-x64.tar.gz"
      sha256 "23b54db4a576e333bc4f3c6ad3ae1a02966fb988577124b7bd500b5703c4186c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.351.1/lightdash-cli-3.351.1-linux-x64.tar.gz"
    sha256 "571573c167cbc3843832c4402d2c364707fd78646b0a461a6dc8ad82f6a4dd72"

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
