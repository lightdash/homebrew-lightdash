class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.402.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.402.0/lightdash-cli-3.402.0-macos-arm64.tar.gz"
      sha256 "1636ff5f192f7d97c2315a9fb47eb2203f1c7356b7326cd781bea641a59f9d07"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.402.0/lightdash-cli-3.402.0-macos-x64.tar.gz"
      sha256 "550f3e8759ece8a9479ada22e30f744929ab6153d0f22fbe45fcf243c2baa3d9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.402.0/lightdash-cli-3.402.0-linux-x64.tar.gz"
    sha256 "0030c668557cacc174d899d64296e540e03f3c7371c024b78d2493e0b664247d"

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
