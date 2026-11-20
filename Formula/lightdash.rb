class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.351.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.351.0/lightdash-cli-3.351.0-macos-arm64.tar.gz"
      sha256 "bebafc95aba7808a710d0e254890f62de5996ccddffd854403c95e1ca182d9aa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.351.0/lightdash-cli-3.351.0-macos-x64.tar.gz"
      sha256 "d5fb2e0fbb1b19ef6f538a6f5e8254d911d058277687f91510716eee4ef1c1e9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.351.0/lightdash-cli-3.351.0-linux-x64.tar.gz"
    sha256 "0cd1ea3ecad3dbc46ca13e96480f77c02db455ec648361a8b2d75f7553cf403c"

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
