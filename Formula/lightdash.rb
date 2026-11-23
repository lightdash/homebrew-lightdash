class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.367.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.367.1/lightdash-cli-3.367.1-macos-arm64.tar.gz"
      sha256 "80f7a82f8359a3040449034d3c5ee4a33b2e53ab8cc5df624c4ac6a0eecaccea"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.367.1/lightdash-cli-3.367.1-macos-x64.tar.gz"
      sha256 "b1f918eb8506360d8e320b9b2fba63751d78dd5cc91e485212eccaa1359f3d89"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.367.1/lightdash-cli-3.367.1-linux-x64.tar.gz"
    sha256 "ed38f918e02f407f10adb5ba6b19bdee7d81fd87130aaf83da2d61b405c5859d"

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
