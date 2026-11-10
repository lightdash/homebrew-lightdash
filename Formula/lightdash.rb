class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.205.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.205.1/lightdash-cli-3.205.1-macos-arm64.tar.gz"
      sha256 "668c3e03bf6670e3f5cf599b858de17ce72df8feea7aeb97ce116616996b8115"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.205.1/lightdash-cli-3.205.1-macos-x64.tar.gz"
      sha256 "f993d347d37757cfda43d2c23a2e7d8f2366b24bd8180fe2cb3ef5fe7e15a7be"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.205.1/lightdash-cli-3.205.1-linux-x64.tar.gz"
    sha256 "2c8bb420f6cab516f08ccc06d2454425f761aa446a57a1a2247e8dfd71b7a665"

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
