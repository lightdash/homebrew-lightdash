class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.125.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.125.0/lightdash-cli-3.125.0-macos-arm64.tar.gz"
      sha256 "5d6e44cfbeb30a7ddcd9e58fa7aa9114190f4b7cd6fefdbdcd2b86635fc8c6e6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.125.0/lightdash-cli-3.125.0-macos-x64.tar.gz"
      sha256 "b2019b50544b35ebc4218c66029ac551e8b9f9cde5fb08274139dac478c4ed51"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.125.0/lightdash-cli-3.125.0-linux-x64.tar.gz"
    sha256 "48ad7c4a6ddebddf00b4d28e477ddfb0858f11476d1e40a3d786e32d1481b64e"

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
