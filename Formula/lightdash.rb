class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.116.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.116.0/lightdash-cli-3.116.0-macos-arm64.tar.gz"
      sha256 "bc37594bb4ebc57f3d6c8d6948089eb4fa0e886a3ee58ebe5d7354337f758a94"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.116.0/lightdash-cli-3.116.0-macos-x64.tar.gz"
      sha256 "60d0f5e2e227d3e3ea96488cc3775b8c699df57645afaa101616e933b04bceba"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.116.0/lightdash-cli-3.116.0-linux-x64.tar.gz"
    sha256 "169c159fd16c5e55afcf63ecf81083bbf4c48b3fec0b3edfe02c81bbd2d4650d"

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
