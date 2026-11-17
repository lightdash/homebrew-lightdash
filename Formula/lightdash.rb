class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.300.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.300.0/lightdash-cli-3.300.0-macos-arm64.tar.gz"
      sha256 "4cfe24243b3cd4d5b1410b76b80226f25b80c24b1081e201ea45ed5cc5cbe413"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.300.0/lightdash-cli-3.300.0-macos-x64.tar.gz"
      sha256 "d9ad3117a4f5e074ea0199d85cdcaf64a83f5b9d55a45727e8025319fa9f1bf3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.300.0/lightdash-cli-3.300.0-linux-x64.tar.gz"
    sha256 "3a300b3907dc0e4b8bd9f7efaed82e3a445563007cf1972c1420c43a87e8d084"

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
