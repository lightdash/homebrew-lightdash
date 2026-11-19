class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.335.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.335.0/lightdash-cli-3.335.0-macos-arm64.tar.gz"
      sha256 "74f7ef0890967f04034d5273c324876700302eaafe85017afc5cc06153d8037d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.335.0/lightdash-cli-3.335.0-macos-x64.tar.gz"
      sha256 "a8d87d49e930e8945c01f5f6b38f38e859e34f9a181392daa654ec8cd40c787c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.335.0/lightdash-cli-3.335.0-linux-x64.tar.gz"
    sha256 "8c60818f08b2420eac97fa50372c37ffd3753dac65cdb0306935348e0afed126"

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
