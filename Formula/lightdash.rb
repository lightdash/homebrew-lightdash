class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.357.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.357.0/lightdash-cli-2.357.0-macos-arm64.tar.gz"
      sha256 "5c452b26dc085bf6c100047bc746fc498375dc27a167bb0cc7c1f1227ac7b857"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.357.0/lightdash-cli-2.357.0-macos-x64.tar.gz"
      sha256 "3ec1118eec9f1b7d5fda252de73e636a23460a36864133784e5e934d7113eaa4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.357.0/lightdash-cli-2.357.0-linux-x64.tar.gz"
    sha256 "92df2f2626f695bce323bda96997cae75b72dc98cb176e394e67fdc9f14431fc"

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
