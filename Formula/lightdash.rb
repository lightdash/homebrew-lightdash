class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.128.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.128.2/lightdash-cli-3.128.2-macos-arm64.tar.gz"
      sha256 "750a4a3197d9a72fb5776f19336d5f35b4b1c4e465e1b50bd1cc75f9e0796031"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.128.2/lightdash-cli-3.128.2-macos-x64.tar.gz"
      sha256 "a331e85c84c0cc97a0623e4be83e41021782428be50da8933ad63dadbfb7e08f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.128.2/lightdash-cli-3.128.2-linux-x64.tar.gz"
    sha256 "2032b0b1d5698dc48fd033d8401fc85de11f32149dcb64f827a5692a1f44e8d3"

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
