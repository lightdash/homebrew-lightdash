class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.384.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.384.1/lightdash-cli-3.384.1-macos-arm64.tar.gz"
      sha256 "6e58ff000a4f6f2611e68f93e701030a7e473bc0d21d937cf2726785b364d3df"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.384.1/lightdash-cli-3.384.1-macos-x64.tar.gz"
      sha256 "469b391cc76ab1a220077785c4cf8d8f6fb5299b91ee45d0715770713417d769"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.384.1/lightdash-cli-3.384.1-linux-x64.tar.gz"
    sha256 "f6cfce58d429e32b3737f7c22577915fe938fdd3927fd001bb4a480926ce10a9"

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
