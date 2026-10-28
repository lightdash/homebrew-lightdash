class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.75.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.75.0/lightdash-cli-3.75.0-macos-arm64.tar.gz"
      sha256 "f7401aef03e996162c9dce2690a63cfd3c4e3c769b58bbc84af1f437df522a7f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.75.0/lightdash-cli-3.75.0-macos-x64.tar.gz"
      sha256 "9ed2070e174978492f5ba8be3cc80e9f28308a519fafb8e80a376c696f75d166"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.75.0/lightdash-cli-3.75.0-linux-x64.tar.gz"
    sha256 "4ea06bf5bcd8f92cf6874e6d55c5e3f97b7bb499b65f1416667765983d608e27"

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
