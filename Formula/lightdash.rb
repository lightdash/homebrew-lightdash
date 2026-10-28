class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.87.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.87.0/lightdash-cli-3.87.0-macos-arm64.tar.gz"
      sha256 "8ffc170c976096274bf30feff6c04db688baf29604f218552dd311ddce734aad"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.87.0/lightdash-cli-3.87.0-macos-x64.tar.gz"
      sha256 "2c89a253d3f496b15c34ea928db0aee4e1a4f35a7ed1d28ae5353c12236f74c0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.87.0/lightdash-cli-3.87.0-linux-x64.tar.gz"
    sha256 "7f7ade4a30fa00829c84d9add977ed4137279aa69feebdf0e92427243f9e315c"

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
