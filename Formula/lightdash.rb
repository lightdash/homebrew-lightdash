class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.451.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.451.0/lightdash-cli-2.451.0-macos-arm64.tar.gz"
      sha256 "6621299bfb4f3d853148a259bc26dac3fada9272a01302f201696775161fc623"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.451.0/lightdash-cli-2.451.0-macos-x64.tar.gz"
      sha256 "209574daf070323c499b7aa9cdf6221fcd7f6ac5100eeb61252a70eb78babe7a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.451.0/lightdash-cli-2.451.0-linux-x64.tar.gz"
    sha256 "a1e092a26601bb4b3de97577a27507ac5cd04e4214c2e051ea39c08063e23ccb"

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
