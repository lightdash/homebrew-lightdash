class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.319.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.319.2/lightdash-cli-2.319.2-macos-arm64.tar.gz"
      sha256 "18cf41c7ee926dd14c786d17706721f1442931f7cb4b53aa25f1504ca9fa81ac"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.319.2/lightdash-cli-2.319.2-macos-x64.tar.gz"
      sha256 "4ea90c599fc5cbfcc7c6847afdee8c699ef5e571cc3bbd681e1d8617fd4aac6c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.319.2/lightdash-cli-2.319.2-linux-x64.tar.gz"
    sha256 "b482be531a8c96d26baafcdbacc4c5304781a15db5f3f6e6cfbe101af50c8a52"

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
