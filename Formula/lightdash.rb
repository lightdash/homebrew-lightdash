class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.387.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.387.0/lightdash-cli-2.387.0-macos-arm64.tar.gz"
      sha256 "db3cb6bb3395ec4d37be38d4adf49251d06e4aa25f9374805dc9f02828d70010"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.387.0/lightdash-cli-2.387.0-macos-x64.tar.gz"
      sha256 "ea427821e161e8b9830826f5575edb23d211beb28636c1ae0e89764ad3aebac2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.387.0/lightdash-cli-2.387.0-linux-x64.tar.gz"
    sha256 "6d196a69be4f3bf761c7f575532880be6c70be2b873f7390c68af23ebed1b064"

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
