class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.575.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.575.4/lightdash-cli-2.575.4-macos-arm64.tar.gz"
      sha256 "a35731b8656383bc7b000e5240edbfedbdca30a7c78eb0394a1e256dda99c920"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.575.4/lightdash-cli-2.575.4-macos-x64.tar.gz"
      sha256 "d635595808e2249d16a8f0957a39c4b7a71c4e0ef95ac33fa9719a919c70c184"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.575.4/lightdash-cli-2.575.4-linux-x64.tar.gz"
    sha256 "d762e5ae5825929558c5e7485f728ef648ce409ca3b575a39311f6ddb8e24982"

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
