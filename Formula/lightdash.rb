class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.362.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.362.0/lightdash-cli-3.362.0-macos-arm64.tar.gz"
      sha256 "bb8c619baa2d3296211e71fbe80452d11eaa4e429d9366b17f2b54073edd660b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.362.0/lightdash-cli-3.362.0-macos-x64.tar.gz"
      sha256 "38aa6776631a6ec5772430df6e59160f1fe8d0e6ca3f48aeb13dcd608348ef86"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.362.0/lightdash-cli-3.362.0-linux-x64.tar.gz"
    sha256 "577e46142e38f9e20ef95de6fa593c5c912beb676f45bd5ea00f998380a681e7"

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
