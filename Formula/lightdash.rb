class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.351.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.351.0/lightdash-cli-2.351.0-macos-arm64.tar.gz"
      sha256 "6f1c3de4ace233e22e9446b51ead280fa61f0cfa9009a6d1b8a79598a5dd4cdf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.351.0/lightdash-cli-2.351.0-macos-x64.tar.gz"
      sha256 "57d9bf9a8f4481c576b06bcbc61319d1867272ba3d7bf13544c8e15dbed78603"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.351.0/lightdash-cli-2.351.0-linux-x64.tar.gz"
    sha256 "c0548402321b8e6aefc4274146b48877ae71bc97cd2338847c428912115d7fb2"

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
