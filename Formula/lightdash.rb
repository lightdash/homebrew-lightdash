class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.488.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.488.1/lightdash-cli-2.488.1-macos-arm64.tar.gz"
      sha256 "a27c79cc809e22c1ef5b724e1b12b5251d70fe73296a22899b6943706d793e6f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.488.1/lightdash-cli-2.488.1-macos-x64.tar.gz"
      sha256 "19f7aa8f07424f9dcf8c3d10d68754620ed02a5d58e50b77bdb898081d63cb6a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.488.1/lightdash-cli-2.488.1-linux-x64.tar.gz"
    sha256 "f773699e9cac1e7dd4ff2662096868bd403bc2d8e69c08bc2da9f316ed409fd3"

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
