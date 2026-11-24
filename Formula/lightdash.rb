class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.378.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.378.1/lightdash-cli-3.378.1-macos-arm64.tar.gz"
      sha256 "fb433de7dabe8f9744cb2359fba504c6b4dd8d8d55e4c9ec7709ba6b01d56e04"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.378.1/lightdash-cli-3.378.1-macos-x64.tar.gz"
      sha256 "8988d11e368760eec242ba48e6dc30b3c319cac0d04bf761ad98be609db4fa0a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.378.1/lightdash-cli-3.378.1-linux-x64.tar.gz"
    sha256 "b50addc36d7ed66bbd2b7152711c74e4a311ba50c06f7c6dec7acc15fe7235c1"

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
