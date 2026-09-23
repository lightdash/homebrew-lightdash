class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.309.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.309.0/lightdash-cli-2.309.0-macos-arm64.tar.gz"
      sha256 "61083a3bdb6fef5e044d26ed9c573cdbb7bce9a17597b1c2b05ed5b5a5e56b15"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.309.0/lightdash-cli-2.309.0-macos-x64.tar.gz"
      sha256 "c4151d5df35c4b80e0ed4ee116b801f1c44fce2ae6edb2b9fd69a1be94032571"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.309.0/lightdash-cli-2.309.0-linux-x64.tar.gz"
    sha256 "0bca354425afbbac9ed52eac9e0d9a1caf41a2af77ac228c79debf64462da869"

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
