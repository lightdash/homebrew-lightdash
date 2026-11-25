class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.398.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.398.0/lightdash-cli-3.398.0-macos-arm64.tar.gz"
      sha256 "8a515a0d60eed04c4e1e56cd8553ee1ba2d6b753f0013edb554b4cbb88dba28a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.398.0/lightdash-cli-3.398.0-macos-x64.tar.gz"
      sha256 "7929d411ce35879513c2015f17479e984f3dba349a61b65899fb980452ab2b51"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.398.0/lightdash-cli-3.398.0-linux-x64.tar.gz"
    sha256 "2644810523a085ce1559a3937d9813160d6b62483d53182ed83faab684a5280a"

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
