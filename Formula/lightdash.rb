class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.48.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.48.1/lightdash-cli-3.48.1-macos-arm64.tar.gz"
      sha256 "d5fdc3210af303a80a0f58bc344d6608bc4a696273f2b98071bd35192c13879a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.48.1/lightdash-cli-3.48.1-macos-x64.tar.gz"
      sha256 "beb160c38cd42add3553df8aafe3e83dd6742f41c425b1ca3cdc2cc143dc85f8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.48.1/lightdash-cli-3.48.1-linux-x64.tar.gz"
    sha256 "17a7f53d85192011b384ac3f450579b296c78ff0df1c251ee382a4e8a604bde5"

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
