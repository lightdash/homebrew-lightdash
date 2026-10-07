class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.470.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.470.0/lightdash-cli-2.470.0-macos-arm64.tar.gz"
      sha256 "38c8471b504fd250c8540b755e2122a8721ec83bf9cc10d42d7ae18f4241f053"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.470.0/lightdash-cli-2.470.0-macos-x64.tar.gz"
      sha256 "654d8dc162700714c320029e68896fa48de3c643109670a7d26bdfc4c7bc5a95"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.470.0/lightdash-cli-2.470.0-linux-x64.tar.gz"
    sha256 "22a3c17849484911adf3c0af83beac9917a186252f0affe27c8d0e11af67f3ac"

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
