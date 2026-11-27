class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.420.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.420.5/lightdash-cli-3.420.5-macos-arm64.tar.gz"
      sha256 "a39b578900f25187c12f6ebf636488983af319b6cc26494f9482a3165eb82631"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.420.5/lightdash-cli-3.420.5-macos-x64.tar.gz"
      sha256 "f8aec43894b1c6e35731f6039139785d8776402fa829104b3b4b9431dbd91cb0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.420.5/lightdash-cli-3.420.5-linux-x64.tar.gz"
    sha256 "da287c799477edae23c461de85c0d555a848add5a134207272accd134a23261d"

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
