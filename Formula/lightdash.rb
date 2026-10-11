class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.561.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.561.0/lightdash-cli-2.561.0-macos-arm64.tar.gz"
      sha256 "a32dd40790bcbc0d7bd64933b0b033191ded06b9760e828d1a717c8b69e358fa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.561.0/lightdash-cli-2.561.0-macos-x64.tar.gz"
      sha256 "abf5bd7869d91d72dc0a7820896162eb2d6e9fb33f0339a11a0df946e2da9882"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.561.0/lightdash-cli-2.561.0-linux-x64.tar.gz"
    sha256 "f329144848c8e6573b00e3081f52d253254a1a2fc0335ba12775db616b506c6b"

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
