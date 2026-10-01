class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.406.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.406.0/lightdash-cli-2.406.0-macos-arm64.tar.gz"
      sha256 "6a7dd05ba1e45529cbd0968e84fed5232dfb582228d4eeef6b9c757703eb4945"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.406.0/lightdash-cli-2.406.0-macos-x64.tar.gz"
      sha256 "fdc09ee23421e8b541f8ae4a96c8af92044d2e8523c36763954ea8841f4182b1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.406.0/lightdash-cli-2.406.0-linux-x64.tar.gz"
    sha256 "771e2a0fd199905befb40098c9ad892eb11227bf718d4d5b569b5a26a9e5f90c"

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
