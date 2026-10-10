class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.536.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.536.0/lightdash-cli-2.536.0-macos-arm64.tar.gz"
      sha256 "7c5976db0f31680417b0de77d4aa114ee54706dffae5ce09ea552a4372389c14"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.536.0/lightdash-cli-2.536.0-macos-x64.tar.gz"
      sha256 "58e59553e802eb07aaef2b2fe370d5822dc89a8abe3c63fe22bfbb70b459f8f6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.536.0/lightdash-cli-2.536.0-linux-x64.tar.gz"
    sha256 "34b132b001a31af52ceaae618ce005dc853ae5a07e8e46bc7f3370695aeb24bb"

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
