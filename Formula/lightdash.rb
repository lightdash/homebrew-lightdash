class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.414.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.414.0/lightdash-cli-3.414.0-macos-arm64.tar.gz"
      sha256 "d1d9d7d9a7ca0009a9140eede1f4f766914e90f85acb65865cc23080d4b5ec52"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.414.0/lightdash-cli-3.414.0-macos-x64.tar.gz"
      sha256 "f66337ad06aa97b7f1bef05d9d470312e523e952b81bb5dadea743d706ad8287"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.414.0/lightdash-cli-3.414.0-linux-x64.tar.gz"
    sha256 "31c36dd6053f38dd1ebd6957aebfafab78f20fcefe00167d7813a83a02707004"

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
