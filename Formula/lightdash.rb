class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.196.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.196.0/lightdash-cli-3.196.0-macos-arm64.tar.gz"
      sha256 "5b3488f48de7dca31282508e40b27c86356f1088b9c7ab13d75caaea00071b50"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.196.0/lightdash-cli-3.196.0-macos-x64.tar.gz"
      sha256 "c1dc801137a446b854726aa346ebf1b3864f39fa9b469b5e6bd744f0a925a677"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.196.0/lightdash-cli-3.196.0-linux-x64.tar.gz"
    sha256 "dd57aa522b738cdbb7f052ae729441cfdbfedb71fb3147fd41973c1201ad20b9"

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
